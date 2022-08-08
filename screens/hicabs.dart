import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/Cards/cards.dart';
import 'package:project_from_amirali/main.dart';
import 'package:project_from_amirali/screens/DetailsScreen.dart';

class HicabsName extends StatelessWidget {
  List<HicabData> Data1 = [
    HicabData('assets/images/blackHicab.png', 'black hicab', () {}),
    HicabData('assets/images/whiteHicab.png', 'white hicab', () {}),
    HicabData('assets/images/blackHicab.png', 'black hicab', () {}),
    HicabData('assets/images/whiteHicab.png', 'white hicab', () {}),
    HicabData('assets/images/blackHicab.png', 'black hicab', () {}),
    HicabData('assets/images/whiteHicab.png', 'white hicab', () {}),
    HicabData('assets/images/blackHicab.png', 'black hicab', () {}),
    HicabData('assets/images/whiteHicab.png', 'white hicab', () {}),
  ];

  HicabsName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hicabs(
      Data1: Data1,
    );
  }
}

class HicabData {
  final String image;
  final String text;
  final void Function() onTap;
  HicabData(this.image, this.text, this.onTap);
}

class Hicabs extends StatelessWidget {
  final List<HicabData> Data1;
  Hicabs({
    Key? key,
    required this.Data1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1000,
          padding: const EdgeInsets.fromLTRB(150, 50, 150, 50),
          child: Column(children: [
            Written(),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hicablar",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Align(
                        child: Container(
                          width: 700,
                          child: GridView.count(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              controller:
                                  ScrollController(keepScrollOffset: false),
                              crossAxisCount: 2,
                              children: Data1.map((data) => Cards(data: data))
                                  .toList()),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}


  //  Cards(
  //                                 onTap: () {
  //                                   Navigator.of(context).push(PageRouteBuilder(
  //                                       transitionDuration:
  //                                           const Duration(milliseconds: 500),
  //                                       transitionsBuilder: (context, animation,
  //                                           animationTime, child) {
  //                                         animation = CurvedAnimation(
  //                                             parent: animation,
  //                                             curve: Curves.easeOut);
  //                                         return ScaleTransition(
  //                                           alignment: Alignment.center,
  //                                           scale: animation,
  //                                           child: child,
  //                                         );
  //                                       },
  //                                       pageBuilder: (context, animation,
  //                                           animationTime) {
  //                                         return const DetailsScreen();
  //                                       }));
  //                                 },
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 onTap: () {},
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),
  //                             Cards(
  //                                 image: "assets/images/Parfum.png",
  //                                 text: "Ag hicab"),