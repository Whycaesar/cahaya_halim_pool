import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 30,
        ),
        Stack(
          children: [
            Container(
              child: Image.asset(
                "images/homeicon3.jpg",
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
                  getTranslated(context, 'navbar_aboutus'),
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
        SizedBox(
          height: 30,
        ),
        Container(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      bottom: 40,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 5.0,
                          color: themaColor,
                        ),
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          getTranslated(context, 'aboutus_tittle'),
                          style: TextStyle(
                            fontSize: 26,
                            letterSpacing: 2,
                            color: Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          getTranslated(context, 'aboutus_description'),
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.4,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
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
              SizedBox(
                height: 40,
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                ),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 40,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 5.0,
                            color: themaColor,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Container(
                                width: 100,
                                height: 100,
                                child: Image.asset('images/logo-bbb-top.png')),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            getTranslated(context, 'aboutus_bbb_tittle'),
                            style: TextStyle(
                              fontSize: 26,
                              letterSpacing: 2,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            getTranslated(context, 'aboutus_bbb_description'),
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.4,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Center(
                            child: Text(
                              getTranslated(context, 'aboutus_bbb_member'),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            getTranslated(
                                context, 'aboutus_bbb_member_description'),
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.4,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            getTranslated(
                                context, 'aboutus_bbb_member_subdescription'),
                            style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.4,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: 40,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 5.0,
                                  color: themaColor,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Center(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset('images/pentairWater.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  getTranslated(
                                      context, 'aboutus_pentair_water_tittle'),
                                  style: TextStyle(
                                    fontSize: 26,
                                    letterSpacing: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  getTranslated(context,
                                      'aboutus_pentair_water_description'),
                                  style: TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 1.4,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 5.0,
                                  color: themaColor,
                                ),
                              ),
                            ),
                            child: Column(
                              children: [
                                Center(
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    child:
                                        Image.asset('images/logo-apsp-top.png'),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  getTranslated(context, 'aboutus_apsp_tittle'),
                                  style: TextStyle(
                                    fontSize: 26,
                                    letterSpacing: 2,
                                    color: Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    bottom: 50,
                                  ),
                                  child: Text(
                                    getTranslated(
                                        context, 'aboutus_apsp_description'),
                                    style: TextStyle(
                                      fontSize: 12,
                                      letterSpacing: 1.4,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset('images/assets/about1.JPG'),
                          SizedBox(
                            height: 30,
                          ),
                          Image.asset('images/assets/about2.JPG'),
                          SizedBox(
                            height: 50,
                          )
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        ContactDetailMobile(),
        FooterView()
      ],
    );
  }
}
