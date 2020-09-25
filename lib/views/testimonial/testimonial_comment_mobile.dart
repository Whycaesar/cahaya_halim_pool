import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:flutter/material.dart';

class TestimonialCommentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 1.5,
      // height: 100,

      child: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.blue,
              margin: EdgeInsets.only(
                left: 70,
                right: 70,
                top: 30,
                // bottom: 50,
              ),
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/assets/maingallery1.JPG",
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 170,
                          // width: MediaQuery.of(context).size.width * 1,
                        )),
                  ),
                  Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 50,
                      top: 20,
                    ),

                    // height: MediaQuery.of(context).size.height * 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        getTranslated(context, 'testimonial_comment_1'),
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          height: 2,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 70,
                right: 70,
                top: 30,
                // bottom: 50,
              ),
              padding: EdgeInsets.only(
                top: 30,
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/assets/maingallery2.JPG",
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 170,
                          // width: MediaQuery.of(context).size.width * 1,
                        )),
                  ),
                  Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 50,
                      top: 20,
                    ),
                    // height: MediaQuery.of(context).size.height * 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        getTranslated(context, 'testimonial_comment_2'),
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          height: 2,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 70,
                right: 70,
                top: 30,
                // bottom: 50,
              ),
              padding: EdgeInsets.only(
                top: 30,
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/assets/maingallery3.JPG",
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 170,
                          // width: MediaQuery.of(context).size.width * 1,
                        )),
                  ),
                  Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 50,
                      top: 20,
                    ),
                    // height: MediaQuery.of(context).size.height * 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        getTranslated(context, 'testimonial_comment_3'),
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          height: 2,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 70,
                right: 70,
                top: 30,
                // bottom: 50,
              ),
              padding: EdgeInsets.only(
                top: 30,
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/assets/maingallery4.JPG",
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 170,
                          // width: MediaQuery.of(context).size.width * 1,
                        )),
                  ),
                  Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 50,
                      top: 20,
                    ),
                    // height: MediaQuery.of(context).size.height * 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        getTranslated(context, 'testimonial_comment_4'),
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          height: 2,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 70,
                right: 70,
                top: 30,
                // bottom: 50,
              ),
              padding: EdgeInsets.only(
                top: 30,
              ),
              color: Colors.blue,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    // height: MediaQuery.of(context).size.height * 0.5,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/assets/maingallery5.JPG",
                          width: MediaQuery.of(context).size.width * 0.6,
                          height: 170,
                          // width: MediaQuery.of(context).size.width * 1,
                        )),
                  ),
                  Container(
                    // color: Colors.white,
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 50,
                      top: 20,
                    ),
                    // height: MediaQuery.of(context).size.height * 1,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        getTranslated(context, 'testimonial_comment_5'),
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: "Open Sans",
                          fontWeight: FontWeight.w500,
                          height: 2,
                          letterSpacing: 1.4,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
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
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 30,
                        ),
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 20,
                          right: 5,
                          left: 5,
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
                          bottom: 30,
                        ),
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 20,
                          right: 5,
                          left: 5,
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
                          bottom: 30,
                        ),
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 20,
                          right: 5,
                          left: 5,
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
                          bottom: 30,
                        ),
                        margin: EdgeInsets.only(
                          top: 5,
                          bottom: 20,
                          right: 5,
                          left: 5,
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
      ),
    );
  }
}
