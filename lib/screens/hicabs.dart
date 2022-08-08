import 'package:flutter/material.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/Cards/cards.dart';
import 'package:project_from_amirali/main.dart';
import 'package:project_from_amirali/screens/DetailsScreen.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class Hicabs extends StatefulWidget {
//   const Hicabs({Key? key}) : super(key: key);

//   @override
//   State<Hicabs> createState() => _HicabsState();
// }

// class _HicabsState extends State<Hicabs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           width: 1000,
//           padding: const EdgeInsets.fromLTRB(150, 50, 150, 50),
//           child: Column(children: [
//             Written(),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Hicablar",
//                       style:
//                           TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Expanded(
//                       child: GridView.count(
//                         scrollDirection: Axis.vertical,
//                         shrinkWrap: true,
//                         controller: ScrollController(keepScrollOffset: false),
//                         crossAxisCount: 2,
//                         children: [
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                           Cards(
//                               image: "assets/images/Parfum.png",
//                               text: "Ag hicab"),
//                         ],
//                       ),
//                     ),
//                   ]),
//             ),
//           ]),
//         ),
//       ),
//       bottomNavigationBar: BottomNavBar(),
//     );
//   }
// }

class Hicabs extends StatelessWidget {
  const Hicabs({Key? key}) : super(key: key);

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
                  mainAxisSize: MainAxisSize.max,
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
                      child: Align(
                        child: Container(
                          width: 700,
                          child: GridView.count(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            controller:
                                ScrollController(keepScrollOffset: false),
                            crossAxisCount: 2,
                            children: [
                              Cards(
                                  onTap: () {
                                    Navigator.of(context).push(PageRouteBuilder(
                                        transitionDuration:
                                            const Duration(milliseconds: 500),
                                        transitionsBuilder: (context, animation,
                                            animationTime, child) {
                                          animation = CurvedAnimation(
                                              parent: animation,
                                              curve: Curves.easeOut);
                                          return ScaleTransition(
                                            alignment: Alignment.center,
                                            scale: animation,
                                            child: child,
                                          );
                                        },
                                        pageBuilder: (context, animation,
                                            animationTime) {
                                          return const DetailsScreen();
                                        }));
                                  },
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  onTap: () {},
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                              Cards(
                                  image: "assets/images/Parfum.png",
                                  text: "Ag hicab"),
                            ],
                          ),
                        ),
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
