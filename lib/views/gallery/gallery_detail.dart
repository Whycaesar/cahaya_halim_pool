import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
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
                  getTranslated(context, 'gallery_tittle'),
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
                  getTranslated(context, 'gallery_description'),
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w500,
                    height: 2,
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
