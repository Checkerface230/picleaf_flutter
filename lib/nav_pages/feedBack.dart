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
        backgroundColor: Color(0xffeeeeee),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                " ",
              ),
              const Text(
                "FEEDBACK",
                style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'RobotoBold',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Give us your feedback!",
                style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'RobotoBold',
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 16.0),
                    const TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Name",
                          border: InputBorder.none),
                    ),
                    const SizedBox(height: 8.0),
                    const TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    const TextField(
                      maxLines: 7,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Message",
                        border: InputBorder.none,
                      ),
                    ),
                    const SizedBox(height: 8.0),
                    MaterialButton(
                      height: 60.0,
                      minWidth: double.infinity,
                      color: Color.fromRGBO(102, 204, 102, 100),
                      onPressed: () {},
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
