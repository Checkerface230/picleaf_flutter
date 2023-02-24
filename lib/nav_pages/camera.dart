// ignore_for_file: prefer_is_empty, camel_case_types
import 'package:picleaf/widgets/plant.dart';
import 'package:flutter/material.dart';
// Imports para sa Machine Learning Side
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class cameraPage extends StatefulWidget {
  const cameraPage({super.key});
  @override
  State<cameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<cameraPage> {
  List<String> plants = [
    "Bell Pepper",
    "Cassava",
    "Grape",
    "Potato",
    "Strawberry",
    "Tomato",
  ];
  String getPlantName() {
    String currentplant = "";
    String mainString = _output?.elementAt(0)['label'];
    for (int i = 0; i < plants.length; i++) {
      if (mainString.contains(plants[i])) {
        currentplant = plants[i];
        break;
      } else {
        continue;
      }
    }
    return currentplant;
  }

  bool loading = true;
  // Lahat ng comment na ito ay para sa Machine Learning Side

  late File _image;
  List? _output;
  final picker = ImagePicker();

  @override
  void initState() {
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  detectImage(File image) async {
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 24,
        threshold: 0.4,
        asynch: true,
        imageMean: 0,
        imageStd: 1);
    setState(() {
      _output = output;
      if (_output != null && _output!.length > 0) {
        loading = false;
      } else {
        _output?[0] = 'Object cannot be identified';
      }
    });
  }

  loadModel() async {
    await Tflite.loadModel(
        model: 'assets/picleaf_model_fp16.tflite',
        labels: 'assets/labels.txt',
        numThreads: 1);
  }

  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();
    Tflite.close();
  }

  pickImage() async {
    var image = await picker.pickImage(source: ImageSource.camera);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });

    detectImage(_image);
  }

  pickGalleryImage() async {
    var image = await picker.pickImage(source: ImageSource.gallery);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
    });

    detectImage(_image);
  }

  String? value;
  final items = [
    "Bell Pepper",
    "Cassava",
    "Grape",
    "Potato",
    "Strawberry",
    "Tomato",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar para sa taas na design
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
            height: 112,
          ),
          Center(
            child: loading
                ? SizedBox(
                    height: 310,
                    width: 250,
                    child: Column(children: <Widget>[
                      Image.asset('assets/images/logo.png')
                    ]),
                  )
                : /*const Text(
                      'Yung mga susunod dito yung ilalabas na output kapag na detect yung image') */
                SizedBox(
                    child: Column(children: <Widget>[
                      SizedBox(
                        height: 300,
                        child: Image.file(_image),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      _output != null
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Leaf Detected:\n${_output?.elementAt(0)['label'] ?? 'Object cannot be identified.'}',
                                  style: const TextStyle(
                                      decorationColor: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'RobotoMedium',
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 20),
                                SizedBox(
                                    child: Center(
                                  child: TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    SecondPage(
                                                        plantname:
                                                            getPlantName())));
                                      },
                                      child: const Text(
                                        "More Info",
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'RobotoMedium',
                                          shadows: [
                                            Shadow(
                                                color: Color.fromARGB(
                                                    255, 75, 175, 78),
                                                offset: Offset(0, -5))
                                          ],
                                          color: Colors.transparent,
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              Color.fromARGB(255, 75, 175, 78),
                                          decorationThickness: 4,
                                          decorationStyle:
                                              TextDecorationStyle.solid,
                                        ),
                                      )),
                                )),
                              ],
                            )
                          : Container(),
                    ]),
                  ),
          ),
          const SizedBox(
            height: 45,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: const Text(
              'User Tip:\nMake sure that the picture is clear\nto maximize results.',
              style: TextStyle(fontFamily: 'RobotoMedium', fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 77,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0)),
                color: Color.fromARGB(255, 75, 175, 78)),
            child: Column(children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      //Para sa pag open ng Camera pangkuha ng Image
                      pickImage();
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 75,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 75, 175, 78),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.camera_alt,
                            color: Color(0xffeeeeee),
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text(
                          'Take a Photo',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      //Para sa pag open ng Gallery pangkuha ng Image
                      pickGalleryImage();
                    },
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: 75,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 75, 175, 78),
                              shape: BoxShape.circle),
                          child: const Icon(
                            Icons.add,
                            color: Color(0xffeeeeee),
                            size: 40,
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        const Text(
                          'Add from Gallery',
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ],
      )),
    );
  }
}
