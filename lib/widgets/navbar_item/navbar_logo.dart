import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/locator.dart';
import 'package:cahaya_halim_pool/services/navigation_service.dart';
import 'package:cahaya_halim_pool/widgets/course_details/hand_cursor.dart';

class NavBarLogo extends StatelessWidget {
  final String navigationPath;

  const NavBarLogo(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.07,
      // color: Colors.red,
      child: HandCursor(
        child: IconButton(
          iconSize: 80,
          hoverColor: Color.fromRGBO(220, 213, 216, 0.3),
          icon: Image.asset(
            'images/logo.png',
          ),
          onPressed: () {
            locator<NavigationService>().navigateTo(navigationPath);
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ),
    );
  }
}
