import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class feedbackPage extends StatefulWidget {
  const feedbackPage({super.key});

  @override
  State<feedbackPage> createState() => _feedbackPageState();
}

class _feedbackPageState extends State<feedbackPage> {
  List<bool> isTypeSelected = [false, false, false, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para sa taas ng design
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

      //body of the application
      body: Center(
        child: Text("Feedback"),
      ),
    );
  }
}
