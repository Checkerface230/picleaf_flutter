import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:picleaf/models/plant_display.dart';
import 'package:flutter/material.dart';
import 'package:picleaf/widgets/plantdiseasecard.dart';

class SecondPage extends StatefulWidget {
  final String plantname;
  const SecondPage({Key? key, required this.plantname}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<Object> _plantdiseaseList = [];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    getPlantDiseaseList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme:
              const IconThemeData(color: Color.fromRGBO(102, 204, 102, 1.0)),
          centerTitle: true,
          title: Text(
            widget.plantname,
            style: const TextStyle(
                color: Color.fromRGBO(102, 204, 102, 1.0),
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          shadowColor: const Color.fromARGB(255, 95, 94, 94),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: _plantdiseaseList.length,
            itemBuilder: (context, index) {
              return PlantCard(_plantdiseaseList[index] as PlantDisplay);
            },
            padding: const EdgeInsets.only(top: 10),
          ),
        ));
  }

  Future getPlantDiseaseList() async {
    var data =
        await FirebaseFirestore.instance.collection(widget.plantname).get();
    setState(() {
      _plantdiseaseList =
          List.from(data.docs.map((doc) => PlantDisplay.fromSnapshot(doc)));
    });
  }
}
