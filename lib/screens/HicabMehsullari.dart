import 'package:flutter/material.dart';
import 'package:project_from_amirali/screens/hicabs.dart';

class HicabsName extends StatelessWidget {
  List<HicabData> Data1 = [
    HicabData('assets/images/aghicab.jpg', 'black hicab'),
    HicabData('assets/images/aghicab.jpg', 'white hicab'),
    HicabData('assets/images/aghicab.jpg', 'black hicab'),
    HicabData('assets/images/aghicab.jpg', 'white hicab'),
    HicabData('assets/images/aghicab.jpg', 'black hicab'),
    HicabData('assets/images/aghicab.jpg', 'white hicab'),
    HicabData('assets/images/aghicab.jpg', 'black hicab'),
    HicabData('assets/images/aghicab.jpg', 'white hicab'),
  ];
  String header = 'Hicablar';
  HicabsName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hicabs(
      Data1: Data1,
      header: header,
    );
  }
}
