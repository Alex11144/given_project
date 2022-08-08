import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/Cards/cards.dart';
import 'package:project_from_amirali/main.dart';
import 'package:project_from_amirali/screens/hicabs.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
class Etir extends StatelessWidget {
  List<HicabData> Data2 = [
    HicabData('assets/images/perfume.webp', 'birinci etir', () {}),
    HicabData('assets/images/perfume.webp', 'ikinci etir', () {}),
    HicabData('assets/images/perfume.webp', 'ucuncu etir', () {}),
    HicabData('assets/images/perfume.webp', 'dorduncu etir', () {}),
    HicabData('assets/images/perfume.webp', 'besinci etir', () {}),
    HicabData('assets/images/perfume.webp', 'altinci etir', () {}),
    HicabData('assets/images/perfume.webp', 'yeddinci etir', () {}),
    HicabData('assets/images/perfume.webp', 'sekkizinci etir', () {}),
  ];
  Etir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hicabs(Data1: Data2);
  }
}
