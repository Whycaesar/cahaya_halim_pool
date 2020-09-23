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
                  "WELCOME TO CAHAYA HALIM POOLS",
                  style: TextStyle(
                    fontSize: 24,
                    // letterSpacing: 1.4,
                    color: Colors.blue,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  """We are the leading Jakarta area swimming pool construction company. Cahaya Halim Pools builds impressive custom swimming pools for the greater Jakarta region, with high quality material and at affordable prices. A pool that is properly planned and constructed will enhance the beauty and value of your home.

We will design/build your swimming pool to match your vision, your lifestyle, and your budget. Make your backyard a vacation paradise. From our freeform pool designs, relaxing spas, and one-of-a-kind water features, to our outdoor living upgrades including patio extensions, outdoor kitchens, pergolas and more. Customer satisfaction is of the utmost importance. REPUTATION IS EVERYTHING! Check out some of our customer testimonials.

Call us today and ask about our Jakarta area swimming pool construction and design specials! Serving all of Jakarta, including Bogor, Depok, Tangerang, Bekasi, and more.""",
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
