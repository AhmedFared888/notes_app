import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            onSaved: onSaved,
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Field is required';
              } else {
                return null;
              }
            },
            cursorColor: kprimaryColor,
            maxLines: maxLines,
            decoration: InputDecoration(
              hintText: hint,
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
