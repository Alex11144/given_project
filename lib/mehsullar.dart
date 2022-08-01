import 'package:flutter/material.dart';

class Mehsullar extends StatelessWidget {
  final String text;
  final String image;
  const Mehsullar({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        shadowColor: Colors.black,
        surfaceTintColor: Colors.black,
        elevation: 30,
        child: Container(
          width: 128,
          height: 80,
          decoration: BoxDecoration(
              color: Color.fromARGB(36, 255, 255, 255),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
              Image.asset(image),
            ],
          ),
        ),
      ),
    );
  }
}
