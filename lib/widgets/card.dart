import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  final String title;
  final Color? textColor;
  final void Function()? onPressed;
  final Image image;

  const ListViewCard(
      {super.key,
      required this.title,
      required this.onPressed,
      required this.image,
      this.textColor});

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Color.fromARGB(255, 75, 175, 78),
    );
  }
}
