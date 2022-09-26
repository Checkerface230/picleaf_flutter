// ignore_for_file: must_be_immutable
// PARA TO SA PAG DISPLAY NG PLANT DETAILS
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  List<Object> _plantdiseaseList = [];
  SecondPage({Key? key, required this.plantname}) : super(key: key);
  final String plantname;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme:
              const IconThemeData(color: Color.fromRGBO(102, 204, 102, 1.0)),
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
        body: Container());
  }

  Future getPlantDiseaseList() async {
    final uid = plantname;
    var data = await FirebaseFirestore.instance.doc(uid).get();
    //Bukas ko tapusin.
  }
}
