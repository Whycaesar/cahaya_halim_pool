import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/views/home/home_video.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60),
            padding: EdgeInsets.only(
              // top: 60,
              left: 50,
              right: 20,
            ),
            // height: MediaQuery.of(context).size.height * 1.6,
            width: MediaQuery.of(context).size.width * 0.5 - 11,
            // color: Colors.blue,
            child: Column(
              children: [
                Text(
                  getTranslated(context, 'home_tittle'),
                  style: TextStyle(
                    fontSize: 24,
                    // letterSpacing: 1.4,
                    color: Colors.blue,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  getTranslated(context, 'home_description'),
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Open Sans",
                    fontWeight: FontWeight.w500,
                    height: 2,
                    letterSpacing: 1.4,
                  ),
                  softWrap: true,
                )
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 1.6,
            width: MediaQuery.of(context).size.width * 0.5 - 31,
            // color: Colors.green,
            child: HomeVideo(),
          ),
        ],
      ),
    );
  }
}
