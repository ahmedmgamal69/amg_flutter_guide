import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCardWidget extends StatelessWidget {
  final String onTap;
  final String cardTitle;
  const CustomCardWidget(
      {super.key, required this.onTap, required this.cardTitle});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(onTap),
      child: Card(
          color: const Color.fromARGB(255, 142, 197, 241),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cardTitle,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }
}
