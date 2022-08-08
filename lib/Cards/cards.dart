import 'package:flutter/material.dart';
import 'package:project_from_amirali/screens/hicabs.dart';

class Cards extends StatelessWidget {
  final HicabData data;
  const Cards({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 130, bottom: 90),
      // constraints: BoxConstraints(maxWidth: 200),
      // width: 200,
      // height: 200,
      child: InkWell(
        onTap: data.onTap,
        child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(data.image),
              Text(data.text),
            ]),
      ),
    );
  }
}
