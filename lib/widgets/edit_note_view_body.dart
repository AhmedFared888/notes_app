import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 16.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
          ),
          const CustomTextField(
            hint: 'Title',
          ),
          const CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 400,
          ),
          CustomButton(
            onTap: () {},
            title: 'Edit',
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
