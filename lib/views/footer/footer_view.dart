import 'package:cahaya_halim_pool/views/footer/footer_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterMobile(),
      tablet: FooterTabletDesktop(),
      desktop: FooterTabletDesktop(),
    );
  }
}
