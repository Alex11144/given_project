import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String image;
  final String text;
  final void Function()? onTap;
  const Cards({Key? key, required this.image, required this.text, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 130, bottom: 130),
      // constraints: BoxConstraints(maxWidth: 200),
      // width: 200,
      // height: 200,
      child: InkWell(
        onTap: onTap,
        child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              Text(text),
            ]),
      ),
    );
  }
}
