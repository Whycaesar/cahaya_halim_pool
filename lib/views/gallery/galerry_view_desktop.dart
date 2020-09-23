import 'package:cahaya_halim_pool/views/contact/contact_detail.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/gallery/gallery_detail.dart';
import 'package:cahaya_halim_pool/views/gallery/gallery_header.dart';
import 'package:flutter/material.dart';

class GalleryViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GalleryHeader(),
        GalleryDetail(),
        ContactDetail(),
        FooterView()
      ],
    );
  }
}
