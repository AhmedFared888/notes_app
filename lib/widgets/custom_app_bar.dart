import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          height: 100,
        ),
        Text(
          'Notes',
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}
