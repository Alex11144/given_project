import 'package:flutter/material.dart';
import 'package:project_from_amirali/screens/hicabs.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
class Etir extends StatelessWidget {
  List<HicabData> Data2 = [
    HicabData('assets/images/Parfum.png', 'birinci etir'),
    HicabData('assets/images/Parfum.png', 'ikinci etir'),
    HicabData('assets/images/Parfum.png', 'ucuncu etir'),
    HicabData('assets/images/Parfum.png', 'dorduncu etir'),
    HicabData('assets/images/Parfum.png', 'besinci etir'),
    HicabData('assets/images/Parfum.png', 'altinci etir'),
    HicabData('assets/images/Parfum.png', 'yeddinci etir'),
    HicabData('assets/images/Parfum.png', 'sekkizinci etir'),
  ];
  String header1 = 'Etirler';

  Etir({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hicabs(
      Data1: Data2,
      header: header1,
    );
  }
}
