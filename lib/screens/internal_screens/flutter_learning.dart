import 'package:amg_flutter_guide/screens/internal_screens/flutter_learning/parts.dart';
import 'package:amg_flutter_guide/screens/internal_screens/flutter_learning/videos.dart';
import 'package:flutter/material.dart';

class FlutterLearningPage extends StatefulWidget {
  const FlutterLearningPage({super.key});

  @override
  State<FlutterLearningPage> createState() => _FlutterLearningPageState();
}

class _FlutterLearningPageState extends State<FlutterLearningPage> {
  // ignore: non_constant_identifier_names
  List<Map> flutter_learning_list = [
    {
      "name": "Dart Language",
      "color": Colors.green,
      "boxShadow": const BoxShadow(
          color: Colors.green, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "Flutter Plateform",
      "color": Colors.blue,
      "boxShadow": const BoxShadow(
          color: Colors.blue, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "Firebase",
      "color": Colors.orange,
      "boxShadow": const BoxShadow(
          color: Colors.orange, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "Provider",
      "color": Colors.blue,
      "boxShadow": const BoxShadow(
          color: Colors.blue, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "GetX (State Management)",
      "color": Colors.purple,
      "boxShadow": const BoxShadow(
          color: Colors.purple, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "SQL",
      "color": Colors.orange,
      "boxShadow": const BoxShadow(
          color: Colors.orange, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "SQLFlite",
      "color": Colors.grey,
      "boxShadow": const BoxShadow(
          color: Colors.grey, spreadRadius: -30, blurRadius: 40),
    },
    {
      "name": "PHP Rest API With Flutter",
      "color": Colors.deepPurpleAccent,
      "boxShadow": const BoxShadow(
          color: Colors.deepPurpleAccent, spreadRadius: -30, blurRadius: 40),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 218, 238, 255),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10),
          color: const Color.fromARGB(255, 218, 238, 255),
          child: ListView.builder(
              itemCount: flutter_learning_list.length,
              itemBuilder: (context, i) {
                return InkWell(
                    onTap: () {
                      if (flutter_learning_list[i]['name'] == 'SQLFlite') {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const VideosPage(
                                  courseName: "SQLFlite",
                                )));
                      } else {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => PartsPage(
                                courseTitle: flutter_learning_list[i]
                                    ['name'])));
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          boxShadow: [flutter_learning_list[i]['boxShadow']!]),
                      child: Card(
                        color: flutter_learning_list[i]['color'],
                        margin: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        child: Text(
                          flutter_learning_list[i]['name']!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              height: 5),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ));
              }),
        ));
  }
}
