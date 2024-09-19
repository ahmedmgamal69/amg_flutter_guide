import 'package:amg_flutter_guide/constants/code_map.dart';
import 'package:amg_flutter_guide/constants/flutter_errors_api.dart';
import 'package:amg_flutter_guide/screens/internal_screens/flutter_errors_details.dart';
import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:highlight/languages/dart.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

class FlutterErrorsPage extends StatefulWidget {
  const FlutterErrorsPage({super.key});

  @override
  State<FlutterErrorsPage> createState() => _FlutterErrorsPageState();
}

class _FlutterErrorsPageState extends State<FlutterErrorsPage> {
  TextEditingController searchField = TextEditingController();
  bool? isInternet;

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
          title: const Text('Flutter Errors'),
          backgroundColor: const Color.fromARGB(255, 218, 238, 255),
        ),
        body: isInternet == false
            ? const Center(child: Icon(Icons.wifi_off_rounded, size: 200))
            : FutureBuilder(
          future: getData(),
          builder: (_, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return const Text("Something went wrong");
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text(
                  'Loading...',
                  style: TextStyle(fontSize: 20),
                ),
              );
            }

            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasData) {
                return Container(
                  color: const Color.fromARGB(255, 218, 238, 255),
                  child: ListView.builder(
                    itemCount: flutterErrorsApi.length,
                    itemBuilder: (_, i) {
                      CodeController codeController = CodeController(
                          text: flutterErrorsApi[i]['codeSource'],
                          language: dart,
                          patternMap: codePatternMap,
                          stringMap: codeStringMap);
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      FlutterErrorsDetailsPage(
                                        errorTitle: flutterErrorsApi[i]
                                            ['errTitle'],
                                        errorDesc: flutterErrorsApi[i]
                                            ['errDesc'],
                                        errorSolution: flutterErrorsApi[i]
                                            ['errSolution'],
                                        errorSourceCode: flutterErrorsApi[i]
                                            ['codeSource'],
                                        errorSourceCodeController:
                                            codeController,
                                        stackLink: flutterErrorsApi[i]
                                            ['stackLink'],
                                      )));
                            },
                            child: Card(
                                color: const Color.fromARGB(255, 218, 238, 255),
                                child: Container(
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Row(children: [
                                      SizedBox(
                                        width: 300,
                                        child: Text(
                                          "${flutterErrorsApi[i]['errTitle']}",
                                          style: const TextStyle(
                                              color: Colors.red,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Spacer(),
                                      const Icon(
                                          Icons.keyboard_arrow_right_rounded,
                                          size: 40),
                                    ]))),
                          )
                        ]),
                      );
                    },
                  ),
                );
              }
            }

            return const Center(
                child: Text("Unknown Error Occured",
                    style: TextStyle(fontSize: 18)));
          },
        ));
  }
}
