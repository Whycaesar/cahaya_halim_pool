import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Image.asset(
            "images/homeicon2.jpg",
            height: 300,
            width: MediaQuery.of(context).size.width * 1,
            fit: BoxFit.fill,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.only(top: 120),
            width: 700,
            height: 90,
            color: Color.fromRGBO(30, 20, 225, 0.2),
            child: Center(
                child: Text(
              getTranslated(context, 'navbar_contactus'),
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )),
          ),
        )
      ],
    );
  }
}
