import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/constants/app_colors.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/widgets/navbar_item/navbar_logo.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: themaColor,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: NavBarLogo(HomeRoute)),
          ],
        ));
  }
}
