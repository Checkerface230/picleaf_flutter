import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SimpleDialog extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final title;
  const SimpleDialog(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Alert'),
      content: Text(title),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'))
      ],
    );
  }
}

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({super.key});

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final nameOfuser = TextEditingController();
  final emailOfuser = TextEditingController();
  final messageOfuser = TextEditingController();

  List<bool> isTypeSelected = [false, false, false, true, true];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBar para sa taas ng design
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "PicLeaf",
            style: TextStyle(
                color: Color.fromRGBO(102, 204, 102, 1.0),
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
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Feedback",
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'RobotoBold',
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(102, 204, 102, 1.0)),
              ),
              const Text(
                "Give us your feedback!",
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'RobotoMedium',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 16.0),
                    TextFormField(
                      controller: nameOfuser,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Name",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Name';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      controller: emailOfuser,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8.0),
                    TextFormField(
                      controller: messageOfuser,
                      maxLines: 6,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Message",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Message';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 8.0),
                    MaterialButton(
                      height: 50.0,
                      minWidth: double.infinity,
                      color: const Color.fromRGBO(102, 204, 102, 1.0),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const SimpleDialog('Feedback Submitted');
                            });
                        Map<String, dynamic> data = {
                          "Name": nameOfuser.text,
                          "Email": emailOfuser.text,
                          "Message": messageOfuser.text,
                          "Time": FieldValue.serverTimestamp(),
                        };
                        setState(() {
                          nameOfuser.clear();
                          emailOfuser.clear();
                          messageOfuser.clear();
                        });
                        FirebaseFirestore.instance
                            .collection("FeedbackMessages")
                            .add(data);
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                      child: const Text(
                        'Contact Us!',
                        style: TextStyle(
                            fontSize: 30,
                            fontFamily: 'RobotoBold',
                            color: Color.fromRGBO(102, 204, 102, 1.0)),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          margin: const EdgeInsets.symmetric(horizontal: 0),
                          child: TextButton.icon(
                            // <-- TextButton
                            onPressed: () {},
                            icon: const Icon(
                              Icons.facebook,
                              color: Colors.black,
                              size: 35.0,
                            ),
                            label: const Text(
                              'facebook.com/picleaf',
                              style: TextStyle(fontFamily: 'RobotoMedium'),
                            ),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                            margin: const EdgeInsets.symmetric(horizontal: 0),
                            child: TextButton.icon(
                              // <-- TextButton
                              onPressed: () {},
                              icon: const Icon(
                                Icons.email,
                                color: Colors.black,
                                size: 35.0,
                              ),

                              label: const Text(
                                'picleaf@gmail.com',
                                style: TextStyle(fontFamily: 'RobotoMedium'),
                              ),

                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                              ),
                            )),
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
