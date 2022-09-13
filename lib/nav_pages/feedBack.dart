import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class feedbackPage extends StatelessWidget {
  const feedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para sa taas ng design
      appBar: AppBar(
        title: Text("Picleaf"),
      ),
      body: Center(
        child: Text("Feedback"),
      ),
    );
  }
}
