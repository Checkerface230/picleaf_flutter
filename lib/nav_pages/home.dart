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
    "Tomato",
  ];
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
          title: Text(
            result,
            style: const TextStyle(fontFamily: 'RobotoMedium'),
          ),
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
          title: Text(
            result,
            style: const TextStyle(fontFamily: 'RobotoMedium'),
          ),
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
      backgroundColor: const Color(0xffeeeeee),
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
                      fontSize: 18,
                      fontFamily: 'RobotoMedium',
                      color: Colors.black),
                  textAlign: TextAlign.left),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  color: const Color.fromRGBO(102, 204, 102, 100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                  margin: const EdgeInsets.symmetric(horizontal: 0),
                  color: const Color.fromRGBO(102, 204, 102, 100),
                  child: GridView.count(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color.fromRGBO(17, 102, 19, 1.0),
                        child: const Text(
                          "Apple",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color.fromRGBO(17, 102, 19, 1.0),
                        child: const Text(
                          "Blueberry",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color.fromRGBO(17, 102, 19, 1.0),
                        child: const Text(
                          "Cherry",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color.fromRGBO(17, 102, 19, 1.0),
                        child: const Text(
                          "Corn",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color.fromRGBO(17, 102, 19, 1.0),
                        child: const Text(
                          "Grape",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        color: const Color.fromRGBO(17, 102, 19, 1.0),
                        child: const Text(
                          "Orange",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'RobotoMedium',
                              color: Color(0xffeeeeee)),
                        ),
                      ),
                    ],
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
