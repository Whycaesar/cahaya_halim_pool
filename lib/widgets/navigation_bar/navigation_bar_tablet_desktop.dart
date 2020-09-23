import 'package:cahaya_halim_pool/locator.dart';
import 'package:cahaya_halim_pool/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/widgets/navbar_item/navbar_item.dart';

import '../navbar_item/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      // padding: EdgeInsets.only(
      //   left: 30,
      //   right: 20,
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.07,
              child: NavBarLogo(HomeRoute)),
          Container(
            width: MediaQuery.of(context).size.width * 0.91,
            // width: MediaQuery.of(context).size.width * 0.93,
            // color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  iconSize: 80,
                  highlightColor: Colors.blue[100],
                  // hoverColor: Colors.blue,
                  splashColor: Colors.blue[600],
                  icon: NavBarItem('GALLERY', GalleryRoute),
                  onPressed: () {
                    locator<NavigationService>().navigateTo(GalleryRoute);
                  },
                ),
                IconButton(
                  iconSize: 110,
                  highlightColor: Colors.blue[100],
                  // hoverColor: Colors.blue,
                  splashColor: Colors.blue[600],
                  icon: NavBarItem('CONSTRUCTION', PoolConstructionRoute),
                  onPressed: () {
                    locator<NavigationService>()
                        .navigateTo(PoolConstructionRoute);
                  },
                ),

                // NavBarItem('TESTIMONIALS', TestimonialsRoute),
                IconButton(
                  iconSize: 100,
                  highlightColor: Colors.blue[100],
                  // hoverColor: Colors.blue,
                  splashColor: Colors.blue[600],
                  icon: NavBarItem('TESTIMONIALS', TestimonialsRoute),
                  onPressed: () {
                    locator<NavigationService>().navigateTo(TestimonialsRoute);
                  },
                ),

                // NavBarItem('ABOUT US', AboutRoute),
                IconButton(
                  iconSize: 70,
                  highlightColor: Colors.blue[100],
                  // hoverColor: Colors.blue,
                  splashColor: Colors.blue[600],
                  icon: NavBarItem('ABOUT US', AboutRoute),
                  onPressed: () {
                    locator<NavigationService>().navigateTo(AboutRoute);
                  },
                ),

                // NavBarItem('CONTACT US', ContactUsRoute),
                IconButton(
                  iconSize: 90,
                  highlightColor: Colors.blue[100],
                  // hoverColor: Colors.blue,
                  splashColor: Colors.blue[600],
                  icon: NavBarItem('CONTACT US', ContactUsRoute),
                  onPressed: () {
                    locator<NavigationService>().navigateTo(ContactUsRoute);
                  },
                ),

                // NavBarItem('Episode', EpisodesRoute),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
