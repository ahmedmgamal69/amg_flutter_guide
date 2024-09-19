import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

class FlutterErrorsDetailsPage extends StatefulWidget {
  final String errorTitle;
  final String errorDesc;
  final String errorSolution;
  final String? errorSourceCode;
  final CodeController errorSourceCodeController;
  final String stackLink;

  const FlutterErrorsDetailsPage({
    super.key,
    required this.errorTitle,
    required this.errorDesc,
    required this.errorSolution,
    required this.errorSourceCode,
    required this.errorSourceCodeController,
    required this.stackLink,
  });

  @override
  State<FlutterErrorsDetailsPage> createState() =>
      _FlutterErrorsDetailsPageState();
}

class _FlutterErrorsDetailsPageState extends State<FlutterErrorsDetailsPage> {
  String? myErrTitle;
  String? myErrDesc;
  String? myErrSolution;
  String? mySourceCode;
  CodeController? mySourceCodeController;
  String? myStackLink;
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
    myErrTitle = widget.errorTitle;
    myErrDesc = widget.errorDesc;
    myErrSolution = widget.errorSolution;
    mySourceCode = widget.errorSourceCode;
    mySourceCodeController = widget.errorSourceCodeController;
    myStackLink = widget.stackLink;
    super.initState();
    checkInternet();
  }

  Future getData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var responseBody = response.body;
    return responseBody;
  }

  Future<void> openStack() async {
    if (!await launchUrl(Uri.parse(myStackLink!))) {
      throw Exception('Could not launch $myStackLink');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Errors Details'),
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
                      return ListView(children: [
                        Column(
                          children: [
                            Container(
                                padding: const EdgeInsets.all(15),
                                margin: const EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 2),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const SizedBox(height: 10),
                                      SelectableText(
                                        myErrTitle!,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Divider(
                                        height: 50,
                                      ),
                                      const SelectableText(
                                        "Description",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 15),
                                      SelectableText(
                                        myErrDesc!,
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      const Divider(
                                        height: 50,
                                      ),
                                      const SelectableText(
                                        "Solutions",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      SelectableText(
                                        myErrSolution!,
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      const Divider(
                                        height: 60,
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 80),
                                        child: Image.asset(
                                          'assets/images/stackImg.png',
                                          height: 50,
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () => openStack(),
                                          child: SelectableText(
                                            myStackLink!,
                                            style: const TextStyle(
                                                color: Colors.blue,
                                                fontSize: 18,
                                                decoration:
                                                    TextDecoration.underline),
                                          )),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      mySourceCode != null
                                          ? CodeField(
                                              controller:
                                                  mySourceCodeController!,
                                            )
                                          : Container(),
                                    ])),
                          ],
                        )
                      ]);
                    }
                  }

                  return const Center(
                    child: Text('Unknown Error Ocurred'),
                  );
                },
              ));
  }
}
