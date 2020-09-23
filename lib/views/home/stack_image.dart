import 'package:flutter/material.dart';

class StackImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
