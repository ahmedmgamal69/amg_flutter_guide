import 'package:flutter/material.dart';

class CustomErrorCard extends StatelessWidget {
  final String errors;
  const CustomErrorCard({super.key, required this.errors});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.circular(40)),
        child: Row(
          children: [
            SizedBox(
              width: 300,
              child: Text(
                errors,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 40,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
