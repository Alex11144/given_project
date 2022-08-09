import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/details/utils.dart';
import 'package:project_from_amirali/details/sm_product_model.dart';

import 'sm_product_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  final List<SmProduct> Data1 = [
    SmProduct(image: 'assets/images/aghicab.jpg'),
    SmProduct(image: 'assets/images/Parfum.png'),
    SmProduct(image: 'assets/images/aghicab.jpg'),
    SmProduct(image: 'assets/images/Parfum.png'),
    SmProduct(image: 'assets/images/aghicab.jpg'),
    SmProduct(image: 'assets/images/Parfum.png'),
    SmProduct(image: 'assets/images/aghicab.jpg'),
    SmProduct(image: 'assets/images/Parfum.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    Center(
                        child: Image(
                            image: AssetImage(Data1.map((e) => e).toString()))),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outline))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
