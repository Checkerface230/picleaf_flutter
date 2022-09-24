import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color textcolor;
  final Color backgroundColor;
  final String title;
  final void Function()? onPressed;
  final Image image;
  final double size;

  const CustomCard(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.textcolor,
      required this.backgroundColor,
      required this.size,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
