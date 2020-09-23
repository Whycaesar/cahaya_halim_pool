import 'package:flutter/material.dart';

class HomeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: 50,
          bottom: 50,
        ),
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.3 - 10,
              child: Image.asset(
                'images/assets/layoutDesign.JPG',
                width: 400,
                height: 300,
              ),
            ),
            Container(
              // color: Colors.red,
              // padding: EdgeInsets.only(
              //   left: 20,
              //   right: 20,
              // ),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5 - 10,
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
                      '''Let the Jakarta swimming pool design professionals at Cahaya Halim Pools design your next dream-pool. Every client receives a 3-D computer generated design before we begin construction. These masterfully created renderings allow you to see all the elements of your pool design as they integrate to your home and backyard. At this phase, you can make revisions and improvements as necessary. Upon approval of your design, we use this layout to create detailed construction plans and we begin the layout process. We also provide swimming pool construction in Bogor, Depok, Tangerang, Bekasi and other surrounding Jabodetabek communities.''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 1,
                        height: 2,
                      ),
                      softWrap: true,
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
