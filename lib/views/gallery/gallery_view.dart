import 'package:cahaya_halim_pool/views/gallery/galerry_view_desktop.dart';
import 'package:cahaya_halim_pool/views/gallery/gallery_view_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: GalleryViewMobile(),
      tablet: GalleryViewDesktop(),
      desktop: GalleryViewDesktop(),
    );
  }
}
