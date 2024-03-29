import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cahaya_halim_pool/datamodels/navbar_item_model.dart';
import 'package:cahaya_halim_pool/locator.dart';
import 'package:cahaya_halim_pool/services/navigation_service.dart';
import 'package:cahaya_halim_pool/widgets/navbar_item/navbar_item_desktop.dart';
import 'package:cahaya_halim_pool/widgets/navbar_item/navbar_item_mobile.dart';
import 'package:cahaya_halim_pool/extensions/hover_extensions.dart';

// ignore: must_be_immutable
class NavBarItem extends StatelessWidget {
  var title;
  String navigationPath;
  IconData icon;
  NavBarItem(this.title, this.navigationPath, {this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        locator<NavigationService>().navigateTo(navigationPath);
        Scaffold.of(context).openEndDrawer();
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ).showCursorOnHover.moveUpOnHover,
      ),
    );
  }
}
