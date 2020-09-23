import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/widgets/navbar_item/navbar_item.dart';
import 'package:cahaya_halim_pool/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.65,
      decoration: BoxDecoration(
        color: themaColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          // BONUS: Combine the UI for this widget with the NavBarItem and make it responsive.
          // The UI for the current DrawerItem shows when it's in mobile, else it shows the NavBarItem ui.
          NavBarItem(
            'GALLERY',
            GalleryRoute,
            icon: Icons.photo_library,
          ),
          NavBarItem(
            'CONSTRUCTION',
            PoolConstructionRoute,
            icon: Icons.picture_in_picture,
          ),
          NavBarItem(
            'TESTIMONIALS',
            TestimonialsRoute,
            icon: Icons.comment,
          ),
          NavBarItem(
            'ABOUT US',
            AboutRoute,
            icon: Icons.info,
          ),
          NavBarItem(
            'CONTACT US',
            ContactUsRoute,
            icon: Icons.contacts,
          ),
        ],
      ),
    );
  }
}
