import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            cursorColor: kprimaryColor,
            decoration: InputDecoration(
              hintText: 'Title',
              //hintStyle: const TextStyle(color: kprimaryColor),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(
                kprimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.0),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
