// ignore: file_names
import 'package:code_text_field/code_text_field.dart';
import 'package:flutter/material.dart';

class CustomExpansionBody extends StatelessWidget {
  final String errorDesc;
  final String errorSolution;
  final String? errorSourceCode;
  final CodeController sourceCodeController;

  const CustomExpansionBody(
      {super.key,
      required this.errorDesc,
      required this.errorSolution,
      required this.errorSourceCode,
      required this.sourceCodeController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First Error
        Container(
            padding: const EdgeInsets.all(15),
            margin: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 2),
                borderRadius: BorderRadius.circular(20)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  const SizedBox(height: 10),
                  const SelectableText(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  SelectableText(
                    errorDesc,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const Divider(
                    height: 50,
                  ),
                  const SelectableText(
                    "Solutions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SelectableText(
                    errorSolution,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore: unnecessary_null_comparison
                  errorSourceCode != null
                      ? CodeField(
                          controller: sourceCodeController,
                          textStyle: const TextStyle(fontFamily: 'SourceCode'),
                        )
                      : Container(),
                ],
              ),
            ])),
      ],
    );
  }
}
