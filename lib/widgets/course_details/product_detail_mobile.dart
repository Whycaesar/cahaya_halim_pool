import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProductDetailMobile extends StatelessWidget {
  String imageProduct1;

  ProductDetailMobile(this.imageProduct1);
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height * 0.5,
      child: Center(
        child: Image.asset(
          "images/assets/" + imageProduct1.toString() + ".JPG",
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width * 1,
        ),
      ),
    );
  }
}
