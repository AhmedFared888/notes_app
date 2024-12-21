import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit()..fetchAllNotes(),
      child: Scaffold(
        floatingActionButton: BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                NotesCubit cubit = BlocProvider.of<NotesCubit>(context);
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return BlocProvider.value(
                      value: cubit,
                      child: const AddNoteBottomSheet(),
                    );
                  },
                );
              },
              backgroundColor: Colors.lightBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              child: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            );
          },
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
