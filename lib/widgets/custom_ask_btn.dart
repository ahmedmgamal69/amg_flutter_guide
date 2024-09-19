import 'package:flutter/material.dart';

class CustomAskBtn extends StatelessWidget {
  final String title;
  final Color btnColor;
  final Color borderColor;
  final Color txtColor;
  final void Function()? onPressed;

  const CustomAskBtn({
    super.key,
    required this.title,
    required this.btnColor,
    required this.borderColor,
    required this.txtColor,
    required this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: btnColor,
        textColor: txtColor,
        height: 50,
        minWidth: double.infinity,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor, width: 3),
            borderRadius: BorderRadius.circular(30)),
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ));
  }
}
