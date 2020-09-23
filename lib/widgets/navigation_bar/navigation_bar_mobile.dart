import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/widgets/navbar_item/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 50,
        right: 50,
      ),
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Container(
              // margin: EdgeInsets.only(
              //   left: 80,
              // ),
              child: NavBarLogo(HomeRoute))
        ],
      ),
    );
  }
}
