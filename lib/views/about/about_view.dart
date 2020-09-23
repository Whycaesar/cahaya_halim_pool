import 'package:cahaya_halim_pool/views/about/about_desktop.dart';
import 'package:cahaya_halim_pool/views/about/about_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutMobile(),
      tablet: AboutDesktop(),
      desktop: AboutDesktop(),
    );
  }
}
