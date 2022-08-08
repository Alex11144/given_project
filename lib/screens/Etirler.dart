// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/Cards/cards.dart';
import 'package:project_from_amirali/main.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Etir extends StatefulWidget {
  const Etir({Key? key}) : super(key: key);

  @override
  State<Etir> createState() => _EtirState();
}

class _EtirState extends State<Etir> {
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Etirler",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        controller: ScrollController(keepScrollOffset: false),
                        crossAxisCount: 2,
                        children: [
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                          Cards(
                              image: "assets/images/aghicab.jpg",
                              text: 'parfum'),
                        ],
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
