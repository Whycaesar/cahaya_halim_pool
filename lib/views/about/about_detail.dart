import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:flutter/material.dart';

class AboutDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
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
                // height: MediaQuery.of(context).size.height * 1.4,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
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
                        fontSize: 14,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w100,
                        height: 2,
                        letterSpacing: 1.4,
                      ),
                    )
                    // RichText(
                    //   text: TextSpan(
                    //     text: 'Hello ',
                    //     style: DefaultTextStyle.of(context).style,
                    //     children: <TextSpan>[
                    //       TextSpan(
                    //           text: 'bold',
                    //           style: TextStyle(fontWeight: FontWeight.bold)),
                    //       TextSpan(text: ' world!'),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 100,
                  bottom: 100,
                ),
                // color: Colors.yellow,
                // height: MediaQuery.of(context).size.height * 1.4,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      // color: Colors.amber,
                      height: 300,
                      child: Image.asset("images/assets/about1.JPG"),
                    ),
                    SizedBox(
                      height: 150,
                    ),
                    Container(
                      // color: Colors.deepOrange,
                      height: 300,
                      child: Image.asset("images/assets/about2.JPG"),
                    )
                  ],
                ),
              )
            ],
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
          SizedBox(
            height: 40,
          ),
          Container(
            // color: Colors.pink,
            margin: EdgeInsets.only(
              top: 40,
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Container(
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
                    // width: MediaQuery.of(context).size.width * 0.5,
                    // height: 400,
                    // color: Colors.deepOrange,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                              width: 150,
                              height: 150,
                              child: Image.asset('images/logo-bbb-top.png')),
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
                          height: 40,
                        ),
                        Text(
                          getTranslated(context, 'aboutus_bbb_description'),
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w100,
                            height: 2,
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
                            fontSize: 14,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w100,
                            height: 2,
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
                            fontSize: 16,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w500,
                            height: 2,
                            letterSpacing: 1.4,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
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
                              Center(
                                child: Container(
                                  width: 150,
                                  height: 150,
                                  child: Image.asset('images/pentairWater.png'),
                                ),
                              ),
                              // Center(
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
                                height: 40,
                              ),
                              Text(
                                getTranslated(context,
                                    'aboutus_pentair_water_description'),
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: "Open Sans",
                                  fontWeight: FontWeight.w100,
                                  height: 2,
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
                                  width: 150,
                                  height: 150,
                                  child:
                                      Image.asset('images/logo-apsp-top.png'),
                                ),
                              ),
                              // Center(
                              Text(
                                getTranslated(context, 'aboutus_apsp_tittle'),
                                style: TextStyle(
                                  fontSize: 26,
                                  letterSpacing: 2,
                                  color: Colors.blue,
                                ),
                              ),
                              SizedBox(
                                height: 100,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  bottom: 50,
                                ),
                                child: Text(
                                  getTranslated(
                                      context, 'aboutus_apsp_description'),
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: "Open Sans",
                                    fontWeight: FontWeight.w100,
                                    height: 2,
                                    letterSpacing: 1.4,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 150,
                        ),
                        Image.asset('images/homeicon6.jpg'),
                        SizedBox(
                          height: 150,
                        )
                        // ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
