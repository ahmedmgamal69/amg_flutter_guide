import 'package:amg_flutter_guide/constants/media_links/video_map_inks.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

class VideosPage extends StatefulWidget {
  final String? parTitle;
  final String courseName;
  const VideosPage({super.key, this.parTitle, required this.courseName});

  @override
  State<VideosPage> createState() => _VideosPageState();
}

class _VideosPageState extends State<VideosPage> {
  bool? isInternet;
  List currentVideosList = [];
  String? courseTitle;

  checkInternet() async {
    final List<ConnectivityResult> connectivityResult =
        await (Connectivity().checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      isInternet = false;
      setState(() {});
    } else {
      isInternet = true;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    checkInternet();
    courseTitle = widget.parTitle;
    if (widget.parTitle == null) {
      courseTitle = 'SQLFlite';
    }
    setState(() {});
    if (widget.courseName == 'Dart Language') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < dartVideos1.length; i++) {
          currentVideosList.add(dartVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < flutterVideos2.length; i++) {
          currentVideosList.add(flutterVideos2[i]);
        }
      } else if (widget.parTitle == 'Part (3)') {
        for (int i = 0; i < dartVideos3.length; i++) {
          currentVideosList.add(dartVideos3[i]);
        }
      } else if (widget.parTitle == 'Part (4)') {
        for (int i = 0; i < dartVideos4.length; i++) {
          currentVideosList.add(dartVideos4[i]);
        }
      } else if (widget.parTitle == 'Part (5)') {
        for (int i = 0; i < dartVideos5.length; i++) {
          currentVideosList.add(dartVideos5[i]);
        }
      } else if (widget.parTitle == 'Part (6)') {
        for (int i = 0; i < dartVideos6.length; i++) {
          currentVideosList.add(dartVideos6[i]);
        }
      } else if (widget.parTitle == 'Part (7)') {
        for (int i = 0; i < dartVideos7.length; i++) {
          currentVideosList.add(dartVideos7[i]);
        }
      }
    } else if (widget.courseName == 'Flutter Plateform') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < flutterVideos1.length; i++) {
          currentVideosList.add(flutterVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < flutterVideos2.length; i++) {
          currentVideosList.add(flutterVideos2[i]);
        }
      } else if (widget.parTitle == 'Part (3)') {
        for (int i = 0; i < flutterVideos3.length; i++) {
          currentVideosList.add(flutterVideos3[i]);
        }
      } else if (widget.parTitle == 'Part (4)') {
        for (int i = 0; i < flutterVideos4.length; i++) {
          currentVideosList.add(flutterVideos4[i]);
        }
      } else if (widget.parTitle == 'Part (5)') {
        for (int i = 0; i < flutterVideos5.length; i++) {
          currentVideosList.add(flutterVideos5[i]);
        }
      } else if (widget.parTitle == 'Part (6)') {
        for (int i = 0; i < flutterVideos6.length; i++) {
          currentVideosList.add(flutterVideos6[i]);
        }
      } else if (widget.parTitle == 'Part (7)') {
        for (int i = 0; i < flutterVideos7.length; i++) {
          currentVideosList.add(flutterVideos7[i]);
        }
      }
    } else if (widget.courseName == 'Firebase') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < firebaseVideos1.length; i++) {
          currentVideosList.add(firebaseVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < firebaseVideos2.length; i++) {
          currentVideosList.add(firebaseVideos2[i]);
        }
      } else if (widget.parTitle == 'Part (3)') {
        for (int i = 0; i < firebaseVideos3.length; i++) {
          currentVideosList.add(firebaseVideos3[i]);
        }
      } else if (widget.parTitle == 'Part (4)') {
        for (int i = 0; i < firebaseVideos4.length; i++) {
          currentVideosList.add(firebaseVideos4[i]);
        }
      } else if (widget.parTitle == 'Part (5)') {
        for (int i = 0; i < firebaseVideos5.length; i++) {
          currentVideosList.add(firebaseVideos5[i]);
        }
      }
    } else if (widget.courseName == 'Provider') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < providerVideos1.length; i++) {
          currentVideosList.add(providerVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < providerVideos2.length; i++) {
          currentVideosList.add(providerVideos2[i]);
        }
      }
    } else if (widget.courseName == 'GetX (State Management)') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < getxVideos1.length; i++) {
          currentVideosList.add(getxVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < getxVideos2.length; i++) {
          currentVideosList.add(getxVideos2[i]);
        }
      }
    } else if (widget.courseName == 'SQL') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < sqlVideos1.length; i++) {
          currentVideosList.add(sqlVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < sqlVideos2.length; i++) {
          currentVideosList.add(sqlVideos2[i]);
        }
      } else if (widget.parTitle == 'Part (3)') {
        for (int i = 0; i < sqlVideos3.length; i++) {
          currentVideosList.add(sqlVideos3[i]);
        }
      }
    } else if (widget.courseName == 'SQLFlite') {
      for (int i = 0; i < sqlFliteVideos.length; i++) {
        currentVideosList.add(sqlFliteVideos[i]);
      }
    } else if (widget.courseName == 'PHP Rest API With Flutter') {
      if (widget.parTitle == 'Part (1)') {
        for (int i = 0; i < phpVideos1.length; i++) {
          currentVideosList.add(phpVideos1[i]);
        }
      } else if (widget.parTitle == 'Part (2)') {
        for (int i = 0; i < phpVideos2.length; i++) {
          currentVideosList.add(phpVideos2[i]);
        }
      } else if (widget.parTitle == 'Part (3)') {
        for (int i = 0; i < phpVideos3.length; i++) {
          currentVideosList.add(phpVideos3[i]);
        }
      } else if (widget.parTitle == 'Part (4)') {
        for (int i = 0; i < phpVideos4.length; i++) {
          currentVideosList.add(phpVideos4[i]);
        }
      }
    }
  }

  Future getData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var responseBody = response.body;
    return responseBody;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            courseTitle!,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: IconButton(
                  onPressed: () => Get.offAllNamed("/home"),
                  icon: const Icon(
                    Icons.home,
                    size: 30,
                  )),
            )
          ],
        ),
        body: isInternet == false
            ? const Center(child: Icon(Icons.wifi_off_rounded, size: 200))
            : FutureBuilder(
                future: getData(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: Text(
                        'Loading...',
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }

                  if (snapshot.hasError) {
                    return Center(
                      child: Text('UnExpected Error: ${snapshot.error}',
                          style: const TextStyle(fontSize: 20)),
                    );
                  }

                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasData) {
                      return ListView(children: [
                        ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: currentVideosList.length,
                            itemBuilder: (context, i) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    YoutubePlayer(
                                      controller: currentVideosList[i]
                                          ['controller'],
                                      showVideoProgressIndicator: true,
                                      progressIndicatorColor: Colors.amber,
                                      progressColors: const ProgressBarColors(
                                        playedColor: Colors.amber,
                                        handleColor: Colors.amber,
                                      ),
                                      aspectRatio: 15 / 7,
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        currentVideosList[i]['desc'],
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    const Divider(height: 50),
                                  ],
                                ),
                              );
                            })
                      ]);
                    }
                  }

                  return const Center(
                    child: Text('UnKnown Error Ocurred'),
                  );
                },
              ));
  }
}
