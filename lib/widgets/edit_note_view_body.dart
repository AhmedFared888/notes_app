import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 16.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
        ),
        CustomTextField(
          hint: 'Title',
        ),
        CustomTextField(
          hint: 'Content',
          maxLines: 5,
        ),
        SizedBox(
          height: 400,
        ),
        CustomButton(
          title: 'Edit',
        ),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
