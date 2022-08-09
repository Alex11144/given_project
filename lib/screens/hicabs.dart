import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/Cards/cards.dart';
import 'package:project_from_amirali/details/Details.dart';
import 'package:project_from_amirali/main.dart';
import 'package:project_from_amirali/details/DetailsScreen.dart';
import 'package:project_from_amirali/screens/HicabMehsullari.dart';

class HicabData {
  final String image;
  final String text;

  HicabData(this.image, this.text);
}

class Hicabs extends StatelessWidget {
  final List<HicabData> Data1;
  final String header;
  Hicabs({
    Key? key,
    required this.Data1,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 1000,
          padding: const EdgeInsets.fromLTRB(150, 50, 150, 50),
          child: Column(children: [
            const Written(),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(header,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20)),
                    const SizedBox(
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
                              children: Data1.map((data) => Cards(
                                    data: data,
                                    onTap: () {
                                      Navigator.of(context).push(
                                          PageRouteBuilder(
                                              transitionDuration:
                                                  const Duration(
                                                      milliseconds: 500),
                                              transitionsBuilder: (context,
                                                  animation,
                                                  animationTime,
                                                  child) {
                                                animation = CurvedAnimation(
                                                    parent: animation,
                                                    curve: Curves.easeOut);
                                                return ScaleTransition(
                                                  alignment: Alignment.center,
                                                  scale: animation,
                                                  child: child,
                                                );
                                              },
                                              pageBuilder: (context, animation,
                                                  animationTime) {
                                                return DetailsScreen();
                                              }));
                                    },
                                  )).toList()),
                        ),
                      ),
                    ),
                  ]),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
