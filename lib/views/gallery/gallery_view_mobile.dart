import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/widgets/course_details/product_detail_mobile.dart';
import 'package:flutter/material.dart';

class GalleryViewMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(
                "images/homeicon1.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: 300,
                height: 90,
                color: Color.fromRGBO(30, 20, 225, 0.2),
                child: Center(
                    child: Text(
                  "GALLERY",
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            )
          ],
        ),
        Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  bottom: 40,
                ),
                padding: EdgeInsets.only(
                  bottom: 30,
                  top: 60,
                  left: 50,
                  right: 50,
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
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ProductDetailMobile("gallery1")),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("gallery2"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ProductDetailMobile("gallery3")),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("gallery4"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ProductDetailMobile("gallery5")),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("gallery6"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("gallery7"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ProductDetailMobile("maingallery1")),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("maingallery2"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ProductDetailMobile("maingallery3")),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("maingallery4"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ProductDetailMobile("maingallery5")),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("maingallery6"),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: ProductDetailMobile("maingallery7"),
                    )
                  ],
                ),
              ),
              ContactDetailMobile(),
              FooterView()
            ],
          ),
        )
      ],
    );
  }
}
