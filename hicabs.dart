import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/main.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

class Hicabs extends StatefulWidget {
  const Hicabs({Key? key}) : super(key: key);

  @override
  State<Hicabs> createState() => _HicabsState();
}

class _HicabsState extends State<Hicabs> {
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
                      "Hicablar",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: GridView.count(
                        // mainAxisSpacing: 0,
                        // crossAxisSpacing: 0,
                        // childAspectRatio: 1.5,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        controller: ScrollController(keepScrollOffset: false),
                        crossAxisCount: 2,
                        children: [
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
                          Container(
                            child: Column(children: [
                              Image.asset("assets/images/Parfum.png"),
                              const Text("Ag hicab"),
                            ]),
                          ),
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
