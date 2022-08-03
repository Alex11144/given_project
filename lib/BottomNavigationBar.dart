import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomAppBar.dart';
import 'package:project_from_amirali/bottomAppBarIcons.dart';
import 'package:project_from_amirali/hicabs.dart';
import 'package:project_from_amirali/main.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(
    const MaterialApp(home: BottomNavBar()),
  );
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final screens = [Shop(), Hicabs(), Shop(), Hicabs(), Shop()];

  int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: CurrentIndex,
          children: screens,
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              bottomAppBar(text: 'text', image: 'assets/images/hicab.png'),
              bottomAppBar(text: 'text', image: 'assets/images/hicab.png'),
              bottomAppBar(text: 'text', image: 'assets/images/hicab.png'),
              bottomAppBar(text: 'text', image: 'assets/images/hicab.png'),
              bottomAppBar(text: 'text', image: 'assets/images/hicab.png')
            ],
          ),

          // onTap: (index) {
          //   setState(() {
          //     CurrentIndex = index;
          //   });
          // },
        ));
  }
}
