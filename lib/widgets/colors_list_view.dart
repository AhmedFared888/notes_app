import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 25.0,
      backgroundColor: Colors.blue,
    );
  }
}

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25.0 * 2,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const ColorItem();
        },
        itemCount: 6,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
