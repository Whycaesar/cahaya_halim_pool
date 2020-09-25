import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:flutter/material.dart';

class HomeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 50,
          bottom: 50,
        ),
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3 - 10,
              child: Image.asset(
                'images/assets/layoutDesign.JPG',
                width: 400,
                height: 300,
              ),
            ),
            Container(
              // color: Colors.red,
              // padding: EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5 - 10,
                child: Column(
                  children: [
                    Text(
                      getTranslated(context, 'home_design_tittle'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      getTranslated(context, 'home_design_description'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 1,
                        height: 2,
                      ),
                      softWrap: true,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
