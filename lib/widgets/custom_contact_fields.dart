import 'package:flutter/material.dart';

class CustomContactFields extends StatelessWidget {
  final IconData? icon;
  final String title;
  const CustomContactFields(
      {super.key, required this.icon, required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 2),
          borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 22, bottom: 22, right: 30, left: 10),
            decoration: const BoxDecoration(
                border: Border.symmetric(
                    vertical: BorderSide(color: Colors.grey, width: 2)),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Icon(
              icon,
              size: 40,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 250,
            padding: const EdgeInsets.all(5),
            child: SelectableText(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
