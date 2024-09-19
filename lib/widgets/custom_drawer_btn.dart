import 'package:flutter/material.dart';

class CustomDrawerBtn extends StatelessWidget {
  final void Function()? onPressed;
  final String txt;
  // ignore: non_constant_identifier_names
  final IconData? IconBtn;
  final Widget sizedBox;
  final double arrowLeftPos;
  final double txtLeftPos;
  const CustomDrawerBtn(
      // ignore: non_constant_identifier_names
      {
    super.key,
    required this.onPressed,
    required this.txt,
    // ignore: non_constant_identifier_names
    this.IconBtn,
    required this.sizedBox,
    required this.arrowLeftPos,
    required this.txtLeftPos,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 121, 191, 248),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(left: txtLeftPos, right: 30),
                  child: Row(
                    children: [
                      Icon(
                        IconBtn,
                        color: Colors.black,
                      ),
                      sizedBox,
                      Text(
                        txt,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(left: arrowLeftPos),
                child: const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
