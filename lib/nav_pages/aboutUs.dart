import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: const Color(0xffeeeeee),
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
                    color: Color.fromRGBO(102, 204, 102, 1.0)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Text(
                'PicLeaf is a software that uses image processing to detect the disease that the plant may have according to the abnormalities of its leaves. It mainly focuses on fruit-bearing plants that garden lovers or the plantitos and plantitas in the Philippines tend to plant most often.',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'RobotoMedium',
                    color: Colors.black,
                    height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: const Text('App Creators',
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'RobotoBold',
                      color: Color.fromRGBO(102, 204, 102, 1.0)),
                  textAlign: TextAlign.center),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundColor: Color.fromRGBO(102, 204, 102, 1.0),
                        radius: 60,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage('assets/images/Russel_pic.png'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: const Text(
                          'Russel Ivan B. Bataller',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'RobotoMedium',
                              color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const CircleAvatar(
                        backgroundColor: Color.fromRGBO(102, 204, 102, 1.0),
                        radius: 60,
                        child: CircleAvatar(
                          radius: 55,
                          backgroundImage:
                              AssetImage('assets/images/Fritz_pic.png'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        child: const Text(
                          'Fritz D. Lamparas',
                          style: TextStyle(
                              fontSize: 13,
                              fontFamily: 'RobotoMedium',
                              color: Colors.black),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Color.fromRGBO(102, 204, 102, 1.0),
                  radius: 60,
                  child: CircleAvatar(
                    radius: 55,
                    backgroundImage: AssetImage('assets/images/JC_pic.png'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: const Text(
                    'John Carlo P. Hermosa',
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: 'RobotoMedium',
                        color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
