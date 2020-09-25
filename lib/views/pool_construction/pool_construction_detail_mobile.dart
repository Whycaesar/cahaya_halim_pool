import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_construction_item_mobile.dart';
import 'package:flutter/material.dart';

class PoolConstructionDetailMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1,
      padding: EdgeInsets.only(
        top: 60,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 30,
              left: 50,
              right: 50,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2.5,
                  color: themaColor,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  getTranslated(context, 'construction_tittle'),
                  style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  getTranslated(context, 'construction_description'),
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction1.JPG",
            getTranslated(context, 'construction_tittle_1'),
            getTranslated(context, 'construction_description_1'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction2.JPG",
            getTranslated(context, 'construction_tittle_2'),
            getTranslated(context, 'construction_description_2'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction3.JPG",
            getTranslated(context, 'construction_tittle_3'),
            getTranslated(context, 'construction_description_3'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction4.JPG",
            getTranslated(context, 'construction_tittle_4'),
            getTranslated(context, 'construction_description_4'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction5.JPG",
            getTranslated(context, 'construction_tittle_5'),
            getTranslated(context, 'construction_description_5'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction6.JPG",
            getTranslated(context, 'construction_tittle_6'),
            getTranslated(context, 'construction_description_6'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction7.JPG",
            getTranslated(context, 'construction_tittle_7'),
            getTranslated(context, 'construction_description_7'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction8.JPG",
            getTranslated(context, 'construction_tittle_8'),
            getTranslated(context, 'construction_description_8'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction9.JPG",
            getTranslated(context, 'construction_tittle_9'),
            getTranslated(context, 'construction_description_9'),
          ),
          PoolConstructionItemMobile(
            "images/assets/construction10.JPG",
            getTranslated(context, 'construction_tittle_10'),
            getTranslated(context, 'construction_description_10'),
          ),
          Stack(
            children: [
              Container(
                // alignment: Alignment.center,
                height: 150,
                child: Image.asset(
                  "images/homeicon5.jpg",
                  width: MediaQuery.of(context).size.width * 1,
                  fit: BoxFit.fill,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // SizedBox(
                  //   width: 30,
                  // ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 5,
                        right: 5,
                        bottom: 30,
                      ),
                      child: Image.asset(
                        "images/homeicon1.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 5,
                        right: 5,
                        bottom: 30,
                      ),
                      child: Image.asset(
                        "images/homeicon2.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 5,
                        right: 5,
                        bottom: 30,
                      ),
                      child: Image.asset(
                        "images/homeicon3.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.only(
                        top: 5,
                        left: 5,
                        right: 5,
                        bottom: 30,
                      ),
                      child: Image.asset(
                        "images/homeicon4.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
