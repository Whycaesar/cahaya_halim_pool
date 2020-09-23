import 'package:cahaya_halim_pool/views/testimonial/testimonial_desktop.dart';
import 'package:cahaya_halim_pool/views/testimonial/testimonial_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TestimonialView extends StatelessWidget {
  const TestimonialView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: TestimonialMobile(),
      tablet: TestimonialDesktop(),
      desktop: TestimonialDesktop(),
    );
  }
}
