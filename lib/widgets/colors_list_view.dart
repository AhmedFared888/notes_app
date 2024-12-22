import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 21.0,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 23.0,
            backgroundColor: color,
          );
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff0FA3B1),
    Color(0xffD9E5D6),
    Color(0xffEDDEA4),
    Color(0xffF7A072),
    Color(0xffFF9B42),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60.0),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                    color: colors[index],
                    isActive: currentIndex == index,
                  ),
                ),
              ),
            );
          },
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
