import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_construction_item.dart';
import 'package:flutter/material.dart';

class PoolConstructionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 50,
        right: 50,
      ),
      child: Column(
        children: [
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
                    fontSize: 14,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w500,
                    height: 2,
                    letterSpacing: 1.4,
                  ),
                ),
              ],
            ),
          ),
          PoolConstructionItem(
            "images/assets/construction1.JPG",
            getTranslated(context, 'construction_tittle_1'),
            getTranslated(context, 'construction_description_1'),
          ),
          PoolConstructionItem(
            "images/assets/construction2.JPG",
            getTranslated(context, 'construction_tittle_2'),
            getTranslated(context, 'construction_description_2'),
          ),
          PoolConstructionItem(
            "images/assets/construction3.JPG",
            getTranslated(context, 'construction_tittle_3'),
            getTranslated(context, 'construction_description_3'),
          ),
          PoolConstructionItem(
            "images/assets/construction4.JPG",
            getTranslated(context, 'construction_tittle_4'),
            getTranslated(context, 'construction_description_4'),
          ),
          PoolConstructionItem(
            "images/assets/construction5.JPG",
            getTranslated(context, 'construction_tittle_5'),
            getTranslated(context, 'construction_description_5'),
          ),
          PoolConstructionItem(
            "images/assets/construction6.JPG",
            getTranslated(context, 'construction_tittle_6'),
            getTranslated(context, 'construction_description_6'),
          ),
          PoolConstructionItem(
            "images/assets/construction7.JPG",
            getTranslated(context, 'construction_tittle_7'),
            getTranslated(context, 'construction_description_7'),
          ),
          PoolConstructionItem(
            "images/assets/construction8.JPG",
            getTranslated(context, 'construction_tittle_8'),
            getTranslated(context, 'construction_description_8'),
          ),
          PoolConstructionItem(
            "images/assets/construction9.JPG",
            getTranslated(context, 'construction_tittle_9'),
            getTranslated(context, 'construction_description_9'),
          ),
          PoolConstructionItem(
            "images/assets/construction10.JPG",
            getTranslated(context, 'construction_tittle_10'),
            getTranslated(context, 'construction_description_10'),
          ),
          Stack(
            children: [
              Container(
                // alignment: Alignment.center,
                height: 300,
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
                        top: 10,
                        left: 10,
                        right: 10,
                        bottom: 50,
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 20,
                        left: 20,
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
                        top: 10,
                        left: 10,
                        right: 10,
                        bottom: 50,
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 20,
                        left: 20,
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
                        top: 10,
                        left: 10,
                        right: 10,
                        bottom: 50,
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 20,
                        left: 20,
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
                        top: 10,
                        left: 10,
                        right: 10,
                        bottom: 50,
                      ),
                      margin: EdgeInsets.only(
                        top: 20,
                        bottom: 20,
                        right: 20,
                        left: 20,
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
