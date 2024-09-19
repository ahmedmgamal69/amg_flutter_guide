import 'package:amg_flutter_guide/screens/internal_screens/flutter_learning/videos.dart';
import 'package:flutter/material.dart';

class PartsPage extends StatefulWidget {
  final String courseTitle;

  const PartsPage({super.key, required this.courseTitle});

  @override
  State<PartsPage> createState() => _PartsPageState();
}

class _PartsPageState extends State<PartsPage> {
  List<String> currentList = [];
  List<String> partsList = [
    'Part (1)',
    'Part (2)',
    'Part (3)', // > 5 - Deleted
    'Part (4)', // > 4 - Deleted
    'Part (5)', // > 3 - Deleted
    'Part (6)', // > 2 - Deleted
    'Part (7)', // > 1 - Deleted
  ];

  @override
  void initState() {
    super.initState();
    if (widget.courseTitle == 'Dart Language' ||
        widget.courseTitle == 'Flutter Plateform') {
      for (int i = 0; i < partsList.length; i++) {
        currentList.add(partsList[i]);
      }
    } else if (widget.courseTitle == 'Firebase') {
      for (int i = 0; i < partsList.length - 2; i++) {
        currentList.add(partsList[i]);
      }
    } else if (widget.courseTitle == 'Provider') {
      for (int i = 0; i < partsList.length - 5; i++) {
        currentList.add(partsList[i]);
      }
    } else if (widget.courseTitle == 'GetX (State Management)') {
      for (int i = 0; i < partsList.length - 5; i++) {
        currentList.add(partsList[i]);
      }
    } else if (widget.courseTitle == 'SQL') {
      for (int i = 0; i < partsList.length - 4; i++) {
        currentList.add(partsList[i]);
      }
    } else if (widget.courseTitle == 'PHP Rest API With Flutter') {
      for (int i = 0; i < partsList.length - 3; i++) {
        currentList.add(partsList[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${widget.courseTitle} Parts'),
        ),
        body: ListView(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: currentList.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => VideosPage(
                                  parTitle: currentList[i],
                                  courseName: widget.courseTitle,
                                )));
                      },
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(30)),
                            child: Row(
                              children: [
                                Text(
                                  currentList[i],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.keyboard_arrow_right_rounded,
                                  size: 35,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })
          ],
        ));
  }
}
