import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_from_amirali/BottomAppBar.dart';
import 'package:project_from_amirali/bottomAppBarIcons.dart';
import 'package:project_from_amirali/sections.dart';

class Hicabs extends StatelessWidget {
  const Hicabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Scaffold(
          body: GridView.count(
            // scrollDirection: Axis.vertical,
            // shrinkWrap: true,
            // controller: ScrollController(keepScrollOffset: false),
            crossAxisCount: 2,
            children: [
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Image.asset("assets/images/Parfum.png"),
                  Text("Ag hicab"),
                ]),
              ),
            ],
          ),
          bottomNavigationBar: appBar(),
        ),
      ],
    );
  }
}
