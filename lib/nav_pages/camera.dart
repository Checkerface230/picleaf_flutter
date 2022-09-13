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
        centerTitle: true,
        title: Text(
          "Picleaf",
          style: TextStyle(
              color: Color.fromRGBO(102, 204, 102, 100),
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        shadowColor: Color.fromARGB(255, 95, 94, 94),
      ),
      // eto yung text
      body: Center(
        child: Text("Camera"),
      ),
    );
  }
}
