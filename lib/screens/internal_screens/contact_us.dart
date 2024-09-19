import 'package:amg_flutter_guide/widgets/custom_contact_fields.dart';
import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  List<Map> contactUsList = [
    {"title": "amgaw69@gmail.com", 'icon': Icons.email_rounded},
    {"title": "+201140224899", 'icon': Icons.phone},
    {
      "title": "https://www.facebook.com/profile.php?id=100094259226449",
      'icon': Icons.facebook_rounded
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Contact Info",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: contactUsList.length,
              itemBuilder: (context, i) => Column(
                    children: [
                      Container(
                          padding: const EdgeInsets.only(
                              top: 10, right: 20, left: 20),
                          margin: const EdgeInsets.only(top: 20),
                          child: CustomContactFields(
                              icon: contactUsList[i]['icon'],
                              title: contactUsList[i]['title'])),
                      const SizedBox(
                        height: 40,
                      ),
                    ],
                  )),
        ],
      ),
    );
  }
}
