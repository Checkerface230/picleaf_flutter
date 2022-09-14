import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:picleaf/nav_pages/aboutUs.dart';
import 'package:picleaf/nav_pages/camera.dart';
import 'package:picleaf/nav_pages/feedBack.dart';
import 'package:picleaf/nav_pages/home.dart';

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  List pages = [
    const homePage(),
    const cameraPage(),
    const AboutUsPage(),
    const feedbackPage()
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Color.fromARGB(255, 75, 175, 78),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ), //Home
          BottomNavigationBarItem(
            icon: Icon(
              Icons.camera_alt,
            ),
            label: 'Camera',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'About Us',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feedback,
            ),
            label: 'Feeback',
          ),
        ],
      ),
    );
  }
}
