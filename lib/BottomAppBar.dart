import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_from_amirali/bottomAppBarIcons.dart';

class appBar extends StatelessWidget {
  const appBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 100, 0),
      width: 700,
      child: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            // bottomAppBar(
            //   onTap: () {
            //     Navigator.popUntil(context, (route) => route.isFirst);
            //   },
            //   text: "Bas sehife",
            //   image: 'assets/images/Gear.svg',
            // ),
            icon: Icon(Icons.home)),
        // bottomAppBar(
        //   text: "Bas sehife",
        //   image: 'assets/images/Gear.svg',
        // ),
        // bottomAppBar(
        //   text: "Bas sehife",
        //   image: 'assets/images/Gear.svg',
        // ),
        // bottomAppBar(
        //   text: "Bas sehife",
        //   image: 'assets/images/Gear.svg',
        // ),
        // Padding(
        //     padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
        //     child: bottomAppBar(
        //       text: "Bas sehife",
        //       image: 'assets/images/Gear.svg',
        //     )),
        BottomNavigationBarItem(
            // bottomAppBar(
            //   onTap: () {
            //     Navigator.popUntil(context, (route) => route.isFirst);
            //   },
            //   text: "Bas sehife",
            //   image: 'assets/images/Gear.svg',
            // ),
            icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            // bottomAppBar(
            //   onTap: () {
            //     Navigator.popUntil(context, (route) => route.isFirst);
            //   },
            //   text: "Bas sehife",
            //   image: 'assets/images/Gear.svg',
            // ),
            icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            // bottomAppBar(
            //   onTap: () {
            //     Navigator.popUntil(context, (route) => route.isFirst);
            //   },
            //   text: "Bas sehife",
            //   image: 'assets/images/Gear.svg',
            // ),
            icon: Icon(Icons.home)),
      ]),
    );
  }
}
