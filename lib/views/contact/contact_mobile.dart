import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:flutter/material.dart';

class ContactMobile extends StatelessWidget {
  const ContactMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Stack(
          children: [
            Container(
              child: Image.asset(
                "images/homeicon2.jpg",
                height: 150,
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: 30),
                width: 400,
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
        ),
        ContactDetailMobile(),
        FooterView(),
      ],
    );
  }
}
