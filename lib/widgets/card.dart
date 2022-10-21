import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  final String imageOfPlant; //Change to String

  const ListViewCard({
    super.key,
    required this.title,
    required this.onTap,
    required this.imageOfPlant,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 75, 175, 78),
      elevation: 1,
      margin: const EdgeInsets.all(8),
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        splashColor: Colors.lightGreenAccent.withAlpha(30),
        onTap: onTap,

        //sizedBox of the card
        child: Stack(
          children: <Widget>[
            //image of the card
            Image.asset(
              imageOfPlant,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: SizedBox(
                height: 50,
                width: 150,
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 19,
                        fontFamily: 'RobotoMedium',
                        color: Color(0xffeeeeee)), // textstyle
                  ),
                ),
              ),
            ), //text //SizedBox
          ], // <widget>[]
        ), // column
      ), //inkwell
    ); // card
  }
}
