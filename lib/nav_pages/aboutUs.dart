import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: const Text(
                  'About PicLeaf',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'RobotoBold',
                      color: Color.fromRGBO(102, 204, 102, 100)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eu lacus vitae ex congue euismod sed venenatis ex. Curabitur ornare quis tortor eu volutpat. Integer euismod ex et massa pretium eleifend. Quisque mollis aliquet metus, id hendrerit orci ultricies in. Duis enim purus, sagittis eget turpis quis, egestas iaculis ex.',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoBold',
                      color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text('App Creators',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RobotoBold',
                        color: Color.fromRGBO(102, 204, 102, 100)),
                    textAlign: TextAlign.center),
              ),
              const SizedBox(
                height: 25,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromRGBO(102, 204, 102, 100),
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/images/Fritz_pic.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text(
                  'Fritz D. Lamparas',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoBold',
                      color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromRGBO(102, 204, 102, 100),
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/images/JC_pic.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text(
                  'John Carlo P. Hermosa',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoBold',
                      color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const CircleAvatar(
                backgroundColor: Color.fromRGBO(102, 204, 102, 100),
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage('assets/images/Russel_pic.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: const Text(
                  'Russel Ivan B. Bataller',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoBold',
                      color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ));
  }
}
