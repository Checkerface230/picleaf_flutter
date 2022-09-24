import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final Color? textColor;
  final void Function()? onPressed;
  final Image image;

  const CustomCard(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.image,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return const Card();
  }
}
