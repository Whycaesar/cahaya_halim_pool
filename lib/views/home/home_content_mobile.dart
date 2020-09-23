import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel_footer_mobile.dart';
import 'package:cahaya_halim_pool/views/home/home_video.dart';
import 'package:flutter/material.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      children: [
        HomeCarrousel(),
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                  // left: 120,
                  // right: 120,
                ),
                // height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 0.8 - 11,
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
                        letterSpacing: 1.4,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.8 - 11,
                // color: Colors.green,
                child: HomeVideo(),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
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
          height: 50,
        ),
        ContactDetailMobile(),
        Container(
          padding: EdgeInsets.all(50),
          color: Colors.grey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Image.asset(
                  'images/assets/layoutDesign.JPG',
                  width: MediaQuery.of(context).size.width * 1,
                  // height: 300,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      "Swimming Pool Design",
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
                      '''
Let the Jakarta swimming pool design professionals at Cahaya Halim Pools design your next dream-pool. Every client receives a 3-D computer generated design before we begin construction. These masterfully created renderings allow you to see all the elements of your pool design as they integrate to your home and backyard. At this phase, you can make revisions and improvements as necessary. Upon approval of your design, we use this layout to create detailed construction plans and we begin the layout process. We also provide swimming pool construction in Bogor, Depok, Tangerang, Bekasi and other surrounding Jabodetabek communities.
                ''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 1,
                        height: 2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        HomeCarrouselFooterMobile(),
        FooterView(),
      ],
    );
  }
}
