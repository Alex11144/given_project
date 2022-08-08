import 'package:flutter/material.dart';
import 'package:project_from_amirali/screens/Etirler.dart';
import 'package:project_from_amirali/Cards/bottomAppBarIcons.dart';
import 'package:project_from_amirali/main.dart';
import 'package:project_from_amirali/screens/hicabs.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // final screens = [Shop(), Hicabs(), Bar(), Shop(), Hicabs()];

  // int CurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          bottomAppBar(
              text: 'Bas sehife',
              icon: Icons.home_outlined,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Shop()));
              },
              color: Colors.white),
          bottomAppBar(
              text: 'Axtaris',
              icon: Icons.search_outlined,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HicabsName()));
              },
              color: Colors.white),
          bottomAppBar(
              text: 'Mehsullar',
              icon: Icons.shopping_bag_outlined,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HicabsName()));
              },
              color: Colors.white),
          bottomAppBar(
              text: 'Secilmisler',
              icon: Icons.favorite_outline,
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Shop()));
              },
              color: Colors.white),
          bottomAppBar(
              text: 'Ayarlar',
              icon: Icons.settings_outlined,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HicabsName()));
              },
              color: Colors.white),
        ],
      ),
    );
  }
}
