import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:picleaf/models/plant_display.dart';

class PlantCard extends StatelessWidget {
  final PlantDisplay _plantDisplay;

  const PlantCard(this._plantDisplay, {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: const Color.fromRGBO(102, 204, 102, 1.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "${_plantDisplay.title}",
                      style: const TextStyle(
                          fontSize: 32.0,
                          fontFamily: 'RobotoBold',
                          fontWeight: FontWeight.bold,
                          color: Color(0xffeeeeee)),
                      textAlign: TextAlign.center,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Causes:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'RobotoMedium',
                          color: Color(0xffeeeeee))),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "${_plantDisplay.cause}",
                        style: const TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'RobotoLight',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffeeeeee)),
                        textAlign: TextAlign.justify,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Treatments:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'RobotoMedium',
                          color: Color(0xffeeeeee))),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "${_plantDisplay.treatment}",
                        style: const TextStyle(
                            fontSize: 17.0,
                            fontFamily: 'RobotoLight',
                            fontWeight: FontWeight.bold,
                            color: Color(0xffeeeeee)),
                        textAlign: TextAlign.justify,
                      )),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text("Reference Link:",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'RobotoMedium',
                          color: Color(0xffeeeeee))),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse("${_plantDisplay.link}"),
                          builder: ((context, followLink) => TextButton(
                              onPressed: followLink,
                              child: Text(
                                "${_plantDisplay.link}",
                                style: const TextStyle(
                                    fontSize: 15.0,
                                    fontFamily: 'RobotoLight',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline),
                                textAlign: TextAlign.justify,
                              ))))),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
