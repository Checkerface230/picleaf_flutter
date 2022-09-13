import 'package:flutter/material.dart';
import 'package:picleaf/nav_pages/mainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: 'Picleaf', home: mainPage());
  }
}
