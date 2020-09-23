import 'package:cahaya_halim_pool/views/contact/contact_detail.dart';
import 'package:cahaya_halim_pool/views/contact/contact_header.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:flutter/material.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ContactHeader(), ContactDetail(), FooterView()],
    );
  }
}
