import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_construction_detail_mobile.dart';
import 'package:flutter/material.dart';

class PoolConstuctionMobile extends StatelessWidget {
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
                width: 350,
                height: 90,
                color: Color.fromRGBO(30, 20, 225, 0.2),
                child: Center(
                    child: Text(
                  "CONSTRUCTION",
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
        PoolConstructionDetailMobile(),
        ContactDetailMobile(),
        FooterView()
      ],
    );
  }
}
