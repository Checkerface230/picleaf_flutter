import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  final Widget child;
  final void Function()? onPressed;
  final Gradient gradient;

  const GradientButton(
      {super.key,
      required this.onPressed,
      required this.child,
      required this.gradient});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      splashColor: Colors.black12,
      padding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Ink(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
            constraints: const BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
            alignment: Alignment.center,
            child: child),
      ),
    );
  }
}
