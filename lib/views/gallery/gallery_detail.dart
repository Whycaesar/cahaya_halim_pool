import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/widgets/course_details/product_detail.dart';
import 'package:flutter/material.dart';

class GalleryDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 120,
        right: 120,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: 40,
            ),
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: themaColor,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Take A Look At Some Great Ways To Improve Your Life…",
                  style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  """There’s no better way to “vacation in your own backyard” than with a brand-new swimming pool. But you already know that, that’s why you’re here. Found your inspiration here.""",
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 1.4,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: themaColor,
                ),
              ),
            ),
            child: Column(
              children: [
                ProductDetail("gallery1", "", ".", "gallery2", "", ""),
                SizedBox(
                  height: 15,
                ),
                ProductDetail("gallery3", "", "", "gallery4", "", ""),
                SizedBox(
                  height: 15,
                ),
                ProductDetail("gallery5", "", ".", "gallery6", "", ""),
                SizedBox(
                  height: 15,
                ),
                ProductDetail("gallery7", "", ".", "maingallery1", "", ""),
                SizedBox(
                  height: 15,
                ),
                ProductDetail("maingallery2", "", ".", "maingallery3", "", ""),
                SizedBox(
                  height: 15,
                ),
                ProductDetail("maingallery4", "", ".", "maingallery5", "", ""),
                SizedBox(
                  height: 15,
                ),
                ProductDetail("maingallery6", "", ".", "maingallery7", "", ""),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
