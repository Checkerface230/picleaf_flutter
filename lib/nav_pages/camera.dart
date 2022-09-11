import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class cameraPage extends StatefulWidget {
  const cameraPage({super.key});
  @override
  State<cameraPage> createState() => _cameraPageState();
}

class _cameraPageState extends State<cameraPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Camera"),
      ),
    );
  }
}
