import 'package:flutter/material.dart';

class feedbackPage extends StatefulWidget {
  const feedbackPage({super.key});

  @override
  State<feedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<feedbackPage> {
  List<bool> isTypeSelected = [false, false, false, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBar para sa taas ng design
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Picleaf",
            style: TextStyle(
                color: Color.fromRGBO(102, 204, 102, 100),
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          shadowColor: const Color.fromARGB(255, 95, 94, 94),
        ),

        //body of the application
        backgroundColor: const Color(0xffeeeeee),
        body: SingleChildScrollView(
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
                      color: const Color.fromRGBO(102, 204, 102, 100),
                      onPressed: () {},
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: const Text(
                        'Contact Us!',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'RobotoBold',
                            color: Color.fromRGBO(102, 204, 102, 100)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column(
                      children: [
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.black,
                            size: 35.0,
                          ),
                          label: Text('facebook.com/picleaf'),
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                        ),
                        TextButton.icon(
                          // <-- TextButton
                          onPressed: () {},
                          icon: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 35.0,
                          ),

                          label: Text('picleaf@gmail.com'),
                          style: TextButton.styleFrom(
                            primary: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
