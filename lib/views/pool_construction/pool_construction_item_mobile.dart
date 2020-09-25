import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PoolConstructionItemMobile extends StatelessWidget {
  String image;
  var title;
  var description;

  PoolConstructionItemMobile(this.image, this.title, this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 1500,
      padding: EdgeInsets.only(
        bottom: 30,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
      ),
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width * 0.7 - 131,
            height: 150,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            // color: Colors.yellow,
            // height: 150,
            width: MediaQuery.of(context).size.width * 1 - 131,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "1. Swimming Pool Design",
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  // """Let the Austin swimming pool design professionals at Denali Pools design your next dream-pool. Every client receives a 3-D computer generated design before we begin construction. These masterfully created renderings allow you to see all the elements of your pool design as they integrate to your home and backyard. At this phase, you can make revisions and improvements as necessary. Upon approval of your design, we use this layout to create detailed construction plans and we begin the layout process. We also provide swimming pool construction in Round Rock, Georgetown, Cedar Park and other surrounding Texas communities.""",
                  description,
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
