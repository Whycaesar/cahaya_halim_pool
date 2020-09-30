import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cahaya_halim_pool/views/home/home_content_desktop.dart';
import 'package:cahaya_halim_pool/views/home/home_content_mobile.dart';

class HomeView extends StatelessWidget {
  final User user;
  // const HomeView({Key key}) : super(key: key);
  HomeView(this.user);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
