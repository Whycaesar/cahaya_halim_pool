import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_construction_item.dart';
import 'package:flutter/material.dart';

class PoolConstructionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 50,
        right: 50,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 30,
            ),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: themaColor,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pool Construction. Creating your dream.",
                  style: TextStyle(
                    fontSize: 26,
                    letterSpacing: 2,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  """Cahaya Halim Pools is consistently recognized for our superior level of Jakarta swimming pool and spa construction.  We also provide swimming pool construction in Bogor, Depok, Tangerang and Bekasi. Below, we have listed the phases of swimming pool construction.""",
                  style: TextStyle(
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
          PoolConstructionItem(
            "images/assets/construction1.JPG",
            "1. Swimming Pool Design",
            """Let the Jakarta swimming pool design professionals at Cahaya Halim Pools design your next dream-pool. Every client receives a 3-D computer generated design before we begin construction. These masterfully created renderings allow you to see all the elements of your pool design as they integrate to your home and backyard. At this phase, you can make revisions and improvements as necessary. Upon approval of your design, we use this layout to create detailed construction plans and we begin the layout process. We also provide swimming pool construction in Bogor, Depok, Tangerang and Bekasi surrounding Jabodetabek communities.""",
          ),
          PoolConstructionItem(
            "images/assets/construction2.JPG",
            "2. Layout",
            """In the layout phase, we take the dimensions of the pool design & construction plans, and lay it out onto the proposed pool site. This allows you to see the outlines of the actual size and shape of the pool and make any changes to the size and location of the pool before we actually break ground.""",
          ),
          PoolConstructionItem(
            "images/assets/construction3.JPG",
            "3. Excavation",
            """Once the layout phase is complete, we use a backhoe for excavation for your swimming pool and spa. We excavate to your pools exact measurements and specifications.  We are now ready for forms and rebar.""",
          ),
          PoolConstructionItem(
            "images/assets/construction4.JPG",
            "4. Forms and Rebar",
            """We use wood forms and rebar to create the detail and exact shape for your design. Together the forms and rebar create the framework and high structural integrity of your pool.""",
          ),
          PoolConstructionItem(
            "images/assets/construction5.JPG",
            "5. Electrical and Plumbing",
            """In this phase we install all the electrical and plumbing lines. The plumbing is put under pressure and inspected.  The electrical is installed per required city and state codes.""",
          ),
          PoolConstructionItem(
            "images/assets/construction6.JPG",
            "6. Gunite",
            """In this phase we apply the gunite using high-pressure hoses to create the inner shell of your new pool. Once the gunite is applied, you will have a very good idea of exactly how your new pool will look!""",
          ),
          PoolConstructionItem(
            "images/assets/construction7.JPG",
            "7. Masonry and Stone",
            """Call Cahaya Halim Pools for the professional Jakarta Stone and Masonry work that makes your pool look spectacular. This is where your water features come to life. You will select different boulder types, and sizes to create waterfalls, jumping rocks, grottoes, and the unique design aspects of your pool.""",
          ),
          PoolConstructionItem(
            "images/assets/construction8.JPG",
            "8. Decking and Patios",
            """This is the patio area around your pool. Once the concrete is placed, you have options as to the finished surface. Sundek, textured and/ or stained concrete, and custom flagstone are just a few options. Next we install your outdoor fireplaces, fire pits, fountains, summer kitchens and more.""",
          ),
          PoolConstructionItem(
            "images/assets/construction9.JPG",
            "9. Plaster",
            """Applying the plaster becomes the final finish to the interior of the pool. Your pool is now water tight. There are many products and colors available. Your plaster is applied to the gunite and is quickly trowled by hand to ensure a beautiful.""",
          ),
          PoolConstructionItem(
            "images/assets/construction10.JPG",
            "10. Pool School",
            """In this phase we provide a pool school to educate you about the initial start-up and maintenance of your pool. Cahaya Halim Pools is available for any questions you may have in the future.""",
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
        ],
      ),
    );
  }
}
