import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_from_amirali/details/DetailsScreen.dart';
import 'package:project_from_amirali/screens/Etirler.dart';
import 'package:project_from_amirali/Cards/bottomAppBarIcons.dart';
import 'package:project_from_amirali/main.dart';
import 'package:project_from_amirali/screens/HicabMehsullari.dart';
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
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Shop()));
              },
              color: Colors.white),
          bottomAppBar(
              text: 'Axtaris',
              icon: Icons.search_outlined,
              onTap: () {
                showSearch(context: context, delegate: MySearchDelegate());
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Shop()));
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

class MySearchDelegate extends SearchDelegate {
  List<String> products = [
    'white hicab',
    'black hicab',
    'mehsullar',
    'hicabs',
    'etirler'
  ];
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        // SearchDelegate.close() can return vlaues, similar to Navigator.pop().
        this.close(context, '');
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> mehsullar = products.where((element) {
      final result = element.toLowerCase();
      final input = query.toLowerCase();
      return result.contains(input);
    }).toList();

    return ListView.builder(
        itemCount: mehsullar.length,
        itemBuilder: (context, index) {
          final suggestion = mehsullar[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => ProductDetailsView())));
            },
          );
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final suggestion = products[index];
          return ListTile(
            title: Text(suggestion),
            onTap: () {
              query = suggestion;
              showResults(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => ProductDetailsView())));
            },
          );
        });
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      if (query.isEmpty)
        IconButton(
          tooltip: 'Voice Search',
          icon: const Icon(Icons.mic),
          onPressed: () {
            query = 'TODO: implement voice input';
          },
        )
      else
        IconButton(
          tooltip: 'Clear',
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        )
    ];
  }
}
