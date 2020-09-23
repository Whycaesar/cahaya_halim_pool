import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetail extends StatelessWidget {
  String imageProduct1;
  String headlineProduct1;
  String tagLineProduct1;
  String imageProduct2;
  String headlineProduct2;
  String tagLineProduct2;

  ProductDetail(this.imageProduct1, this.headlineProduct1, this.tagLineProduct1,
      this.imageProduct2, this.headlineProduct2, this.tagLineProduct2);
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 49,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "images/assets/" + imageProduct1.toString() + ".JPG",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 88,
                    ),
                    Text(
                      headlineProduct1,
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        height: 2,
                        fontSize: 44,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      tagLineProduct1,
                      style: TextStyle(
                        fontSize: 28,
                        height: 1,
                        color: whiteColor,
                        // backgroundColor: Colors.pink,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Center(
                    //   child: Container(
                    //     color: Color.fromRGBO(0, 0, 0, 0.5),
                    //     // width: MediaQuery.of(context).size.width * 0.2,
                    //     // // child: Row(
                    //     // //   mainAxisAlignment: MainAxisAlignment.center,
                    //     // //   children: [
                    //     // //     Text(
                    //     // //       "See The Preview",
                    //     // //       style: TextStyle(color: blueColor, fontSize: 21),
                    //     // //     ),
                    //     // //     Icon(
                    //     // //       Icons.keyboard_arrow_right,
                    //     // //       color: blueColor,
                    //     // //       size: 21,
                    //     // //     )
                    //     // //   ],
                    //     // // ),
                    //   ),
                    // )
                  ],
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Container(),
        ),
        Flexible(
          flex: 49,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Center(
                  child: Image.asset(
                    "images/assets/" + imageProduct2.toString() + ".JPG",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width * 1,
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 88,
                    ),
                    Text(
                      headlineProduct2,
                      style: TextStyle(
                        color: whiteColor,
                        fontWeight: FontWeight.w600,
                        height: 2,
                        fontSize: 44,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      tagLineProduct2,
                      style: TextStyle(
                        fontSize: 28,
                        height: 1,
                        color: whiteColor,
                        // backgroundColor: Colors.pink,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    // Center(
                    //   child: Container(
                    //     color: Color.fromRGBO(0, 0, 0, 0.5),
                    //     width: MediaQuery.of(context).size.width * 0.2,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: [
                    //         Text(
                    //           "See The Preview",
                    //           style: TextStyle(color: blueColor, fontSize: 21),
                    //         ),
                    //         Icon(
                    //           Icons.keyboard_arrow_right,
                    //           color: blueColor,
                    //           size: 21,
                    //         )
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
