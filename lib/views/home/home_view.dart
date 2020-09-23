import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cahaya_halim_pool/views/home/home_content_desktop.dart';
import 'package:cahaya_halim_pool/views/home/home_content_mobile.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}