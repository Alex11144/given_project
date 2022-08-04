import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomAppBar.dart';
import 'package:project_from_amirali/bottomAppBarIcons.dart';
import 'package:project_from_amirali/hicabs.dart';
import 'package:project_from_amirali/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'routes/router.gr.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [PostsRouter(), UsersRouter()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 40,
            ),
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              SalomonBottomBarItem(
                selectedColor: Colors.amberAccent,
                icon: const Icon(
                  Icons.post_add,
                  size: 30,
                ),
                title: const Text('Posts'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.blue[200],
                icon: const Icon(
                  Icons.person,
                  size: 30,
                ),
                title: const Text('Users'),
              ),
              SalomonBottomBarItem(
                selectedColor: Colors.pinkAccent[100],
                icon: const Icon(
                  Icons.settings,
                  size: 30,
                ),
                title: const Text('Settings'),
              )
            ]);
      },
    );
  }
}
