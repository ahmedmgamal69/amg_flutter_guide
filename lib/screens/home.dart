import 'package:amg_flutter_guide/constants/media_links/image_links.dart';
import 'package:amg_flutter_guide/widgets/custom_card.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isInternet;
  List<Map<String, String>> homeCardsList = [
    {
      'cardTitle': 'Flutter Learning',
      'cardLink': '/flutter_learning',
    },
    {
      'cardTitle': 'Flutter Errors',
      'cardLink': '/flutter_errors',
    },
    {
      'cardTitle': 'Ask Question',
      'cardLink': '/askQuestion',
    },
    {
      'cardTitle': 'Contact Us',
      'cardLink': '/contact_us',
    },
  ];

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white, size: 30),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))),
          toolbarHeight: 70.0,
          titleTextStyle: const TextStyle(color: Colors.white),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  ImageLinks.appLogo,
                  width: 50,
                  height: 50,
                ),
              ),
              const Text(
                "  A M G",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 68, 137, 255),
        ),
        body: isInternet == false
            ? const Center(child: Icon(Icons.wifi_off_rounded, size: 200))
            : Container(
                margin: const EdgeInsets.only(top: 30),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            mainAxisExtent: 150.0,
                            mainAxisSpacing: 20.0),
                    itemCount: homeCardsList.length,
                    itemBuilder: (context, i) {
                      return CustomCardWidget(
                        onTap: homeCardsList[i]['cardLink']!,
                        cardTitle: homeCardsList[i]['cardTitle']!,
                      );
                    })));
  }
}
