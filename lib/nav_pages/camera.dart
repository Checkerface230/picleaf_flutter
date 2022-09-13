import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/common_button.dart';

class cameraPage extends StatefulWidget {
  const cameraPage({super.key});
  @override
  State<cameraPage> createState() => _cameraPageState();
}

class _cameraPageState extends State<cameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para sa taas na design
      appBar: AppBar(
        title: Text("Picleaf"),
      ),
      // eto yung text
      body: Center(
        child: Text("Camera"),
      ),
    );
  }
}
