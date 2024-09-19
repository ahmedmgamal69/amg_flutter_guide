// ignore_for_file: file_names
import 'package:amg_flutter_guide/widgets/custom_ask_btn.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

class AskQuestionPage extends StatefulWidget {
  const AskQuestionPage({super.key});

  @override
  State<AskQuestionPage> createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<AskQuestionPage> {
  TextEditingController message = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey();

  Future<void> _sendWhatsappMsg() async {
    String url = 'https://wa.me/+201140224899?text=${message.text}';
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(children: [
        Form(
          key: formstate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text('Ask A Question',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Card(
                        shape: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Message can't be empty";
                              }
                              return null;
                            },
                            controller: message,
                            maxLines: 8,
                            decoration: const InputDecoration.collapsed(
                              hintText: "Enter Your Message Here...",
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustomAskBtn(
                          title: 'WhatsApp',
                          btnColor: Colors.green,
                          borderColor: Colors.transparent,
                          txtColor: Colors.white,
                          onPressed: () {
                            if (formstate.currentState!.validate()) {
                              _sendWhatsappMsg();
                            }
                          }),
                    ],
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
