import 'package:cahaya_halim_pool/views/contact/contact_desktop.dart';
import 'package:cahaya_halim_pool/views/contact/contact_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ContactMobile(),
      desktop: ContactDesktop(),
      tablet: ContactDesktop(),
    );
  }
}
