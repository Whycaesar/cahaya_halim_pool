import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:flutter/material.dart';

class FooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 22),
            color: footerColor,
            // height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 1,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 2,
              bottom: 2,
              left: 50,
            ),
            color: backgroundBodyColor,
            width: MediaQuery.of(context).size.width * 1,
            height: 50,
            child: Row(
              children: [
                IconButton(
                  icon: Image.asset("images/ig.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/fb.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/in.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/goo.png"),
                  onPressed: () {},
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  icon: Image.asset("images/yt.png"),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 50,
            ),
            color: footerColor,
            height: 50,
            alignment: Alignment.centerLeft,
            child: Text(
              "Designed by WB Design Simple & Affordable ",
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
