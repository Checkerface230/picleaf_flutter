import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _HomePageState();
}

class CustomSearchDelegate extends SearchDelegate {
  // Demo list to show querying
  List<String> searchTerms = [
    "Apple",
    "Blueberry",
    "Cherry",
    "Corn",
    "Grape",
    "Orange",
    "Peach",
    "Pepper",
    "Potato",
    "Raspberry",
    "Soybean",
    "Squash",
    "Strawberry",
    "Tomato"
  ];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
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
      icon: Icon(Icons.arrow_back),
    );
  }

  // third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

class _HomePageState extends State<homePage> {
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
          actions: [
            IconButton(
              onPressed: () {
                // method to show the search bar
                showSearch(
                    context: context,
                    // delegate to customize the search bar
                    delegate: CustomSearchDelegate());
              },
              icon: const Icon(Icons.search, color: Colors.black),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
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
                        fontSize: 20,
                        fontFamily: 'RobotoBold',
                        color: Colors.black),
                    textAlign: TextAlign.left),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                color: const Color.fromRGBO(102, 204, 102, 100),
                child: const Text('List of Plants',
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'RobotoBold',
                        color: Colors.black),
                    textAlign: TextAlign.center),
              ),
            ],
          ),
        ));
  }
}
