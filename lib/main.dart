// import 'dart:html';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_from_amirali/mehsullar.dart';

// import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MaterialApp(
    home: Shop(),
  ));
}

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          // width: 1000,
          padding: const EdgeInsets.fromLTRB(450, 30, 0, 0),
          child: Stack(
            children: [
              Container(
                width: 600,
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.red),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Zohr",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Text(
                        '22:12',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const Text("05:04:22",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200)),
                      const SizedBox(
                        height: 130,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        verticalDirection: VerticalDirection.down,
                        children: [
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: const Color.fromRGBO(
                                      255, 255, 255, 0.541),
                                ),
                                child: Column(
                                  children: const [
                                    Text("Fecr"),
                                    Text("-----"),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 6,
                          ),
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.white54,
                                ),
                                child: Column(
                                  children: const [
                                    Text("Gun cixir"),
                                    Text("04:52"),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 6,
                          ),
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.white54,
                                ),
                                child: Column(
                                  children: const [
                                    Text("Zohr"),
                                    Text("04:52"),
                                  ],
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                            width: 6,
                          ),
                          Expanded(
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.white54,
                                ),
                                child: Column(
                                  children: const [
                                    Text("Esr"),
                                    Text("04:52"),
                                  ],
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SvgPicture.asset(
                'assets/images/Vector.svg',
                height: 330,
                // fit: BoxFit.contain,
              ),
            ],
          ),
        ),
        Container(
          width: 700,
          child: const Text("Mehsullar",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
        ),
        Container(
          width: 700,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  children: [
                    Mehsullar(
                      text: "Hicab",
                      image: 'assets/images/muslim 1.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Mehsullar(
                      text: ("Etirler"),
                      image: 'assets/images/perfume 1.png',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Mehsullar(
                        text: ("Dini Kitablar"),
                        image: 'assets/images/koran 1.png'),
                    SizedBox(
                      width: 20,
                    ),
                    Mehsullar(
                        text: ("Diger"),
                        image: "assets/images/CirclesFour.png"),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     Mehsullar(text: ("Quran")),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Mehsullar(text: ("Namaz")),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Mehsullar(text: ("Hacc")),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Mehsullar(text: ("Ehkem")),
              //   ],
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Row(
              //   children: [
              //     Mehsullar(text: ("Mefatih")),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Mehsullar(text: ("Qible")),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Mehsullar(text: ("Teqvim")),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Mehsullar(text: ("Huseyniyye")),
              //   ],
              // )
            ],
          ),
        ),
      ]),
    );
  }
}
