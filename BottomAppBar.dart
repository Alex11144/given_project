import 'package:flutter/material.dart';
import 'package:flutter/src/cupertino/tab_scaffold.dart';
import 'package:project_from_amirali/BottomAppBar.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/bottomAppBarIcons.dart';

// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Bar extends StatefulWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(150, 50, 150, 50),
          width: 1000,
          child: GridView.count(
            mainAxisSpacing: 0,
            crossAxisSpacing: 0,
            childAspectRatio: 1.5,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            controller: ScrollController(keepScrollOffset: false),
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
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
              Container(
                child: Column(children: [
                  Text("Ag hicab"),
                ]),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }
}
  // PageRouteBuilder(
  //                               transitionDuration: Duration(milliseconds: 500),
  //                               transitionsBuilder:
  //                                   (context, animation, animationTime, child) {
  //                                 animation = CurvedAnimation(
  //                                     parent: animation, curve: Curves.easeOut);
  //                                 return ScaleTransition(
  //                                   alignment: Alignment.center,
  //                                   scale: animation,
  //                                   child: child,
  //                                 );
  //                               },
  //                               pageBuilder:
  //                                   (context, animation, animationTime) {
  //                                 return Hicabs();
  //                               })