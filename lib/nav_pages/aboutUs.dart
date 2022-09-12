import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class aboutusPage extends StatelessWidget {
  const aboutusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Picleaf"),
      ),
      body: Center(
        child: Text("About Us"),
      ),
    ); //container
  }
}
