import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:project_from_amirali/BottomNavigationBar.dart';
import 'package:project_from_amirali/details/product_controller.dart';
import 'package:project_from_amirali/details/sm_product_model.dart';
import 'package:project_from_amirali/details/utils.dart';

class ProductDetailsView extends StatelessWidget {
  ProductDetailsView({Key? key}) : super(key: key);
  final ProductController productController = Get.put(ProductController());

  final List<SmProduct> smProducts = [
    SmProduct(image: 'assets/images/aghicab.jpg'),
    SmProduct(image: 'assets/images/Parfum.png'),
    SmProduct(image: 'assets/images/aghicab.jpg'),
    SmProduct(image: 'assets/images/Parfum.png'),
    // SmProduct(image: 'assets/images/aghicab.jpg'),
    // SmProduct(image: 'assets/images/Parfum.png'),
    // SmProduct(image: 'assets/images/aghicab.jpg'),
    // SmProduct(image: 'assets/images/Parfum.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.kBgColor,
        appBar: AppBar(
          backgroundColor: AppColors.kBgColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Ionicons.chevron_back,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Ionicons.bag_outline,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .35,
              padding: const EdgeInsets.only(bottom: 30),
              width: double.infinity,
              child: Image.asset('assets/images/Parfum.png'),
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(top: 40, right: 14, left: 14),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Chanel',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Product Name',
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                '\$135.00',
                                style: GoogleFonts.poppins(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque auctor consectetur tortor vitae interdum.',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            'Similar This',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          SizedBox(
                            height: 110,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: smProducts.length,
                              itemBuilder: (context, index) => Container(
                                margin: const EdgeInsets.only(right: 6),
                                width: 110,
                                height: 110,
                                decoration: BoxDecoration(
                                  color: AppColors.kSmProductBgColor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Image(
                                    height: 70,
                                    image: AssetImage(smProducts[index].image),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: 50,
                      height: 5,
                      decoration: BoxDecoration(
                        color: AppColors.kGreyColor,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar());
  }
}


























// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:project_from_amirali/BottomNavigationBar.dart';

// class DetailsScreen extends StatefulWidget {
//   const DetailsScreen({Key? key}) : super(key: key);

//   @override
//   State<DetailsScreen> createState() => _DetailsScreenState();
// }

// class _DetailsScreenState extends State<DetailsScreen> {
//   List<HicabImages> Data1 = [
    // HicabImages('assets/images/aghicab.jpg'),
    // HicabImages('assets/images/Parfum.png'),
    // HicabImages('assets/images/aghicab.jpg'),
    // HicabImages('assets/images/Parfum.png'),
    // HicabImages('assets/images/aghicab.jpg'),
    // HicabImages('assets/images/Parfum.png'),
    // HicabImages('assets/images/aghicab.jpg'),
    // HicabImages('assets/images/Parfum.png'),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Container(
//             width: 390,
//             height: 700,
//             child: Column(
//               children: [
//                 Stack(
//                   children: [
//                     Center(
//                         child: Expanded(
//                             child: Data1.map((data) => Image.asset(data)))),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         IconButton(
//                             onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
//                         IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.favorite_outline))
//                       ],
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: BottomNavBar());
//   }
// }

// class HicabImages {
//   final String image;

//   HicabImages(this.image);
// }
