import 'package:flutter/material.dart';
import 'package:picleaf/widgets/plant.dart';
import '../widgets/card.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _HomePageState();
}

const List<String> plants = [
  "Bell Pepper",
  "Cassava",
  "Grape",
  "Potato",
  "Strawberry",
  "Tomato",
];

class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying

  CustomSearchDelegate({String hinttext = "Search plants here"})
      : super(searchFieldLabel: hinttext);

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in plants) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result,
            style: const TextStyle(fontFamily: 'RobotoMedium'),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondPage(plantname: result)));
          },
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in plants) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(
            result,
            style: const TextStyle(fontFamily: 'RobotoMedium'),
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SecondPage(plantname: result)));
          },
        );
      },
    );
  }
}

class _HomePageState extends State<homePage> {
  //Para ito sa shortcut for the List of Plants
  List<Widget> getPlantList() {
    List<Widget> plantitems = [];
    for (int i = 0; i < plants.length; i++) {
      String plant = plants[i];
      String imgname = i.toString();
      var newItem = ListViewCard(
        title: plant,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SecondPage(plantname: plant)));
        },
        imageOfPlant: "assets/Images_of_Plant/$imgname.png",
      );
      plantitems.add(newItem);
    }
    return plantitems;
  }

//
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
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search,
                color: Color.fromRGBO(102, 204, 102, 1.0)),
          )
        ],
      ),
      backgroundColor: const Color(0xffeeeeee),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              child: const Text(
                'Take a pic!',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'RobotoBold',
                    color: Colors.black),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: const Text('Find out what is wrong with your plant!',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'RobotoMedium',
                      color: Color.fromRGBO(102, 124, 138, 1.0)),
                  textAlign: TextAlign.left),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color.fromRGBO(102, 204, 102, 1.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Expanded(
                          child: Text('List of Plants',
                              style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'RobotoBold',
                                  color: Color(0xffeeeeee)),
                              textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                  GridView.count(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(8.0),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      childAspectRatio: 2 / 3.2,
                      crossAxisCount: 2,
                      children: getPlantList()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
