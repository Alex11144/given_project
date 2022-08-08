import 'package:flutter/material.dart';

class sections extends StatelessWidget {
  final String text1;
  final String text2;

  const sections({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.0),
            color: const Color.fromRGBO(255, 255, 255, 0.541),
          ),
          child: Column(
            children: [
              Text(text1),
              Text(text2),
            ],
          )),
    );
  }
}
