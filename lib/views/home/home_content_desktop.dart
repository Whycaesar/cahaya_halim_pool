import 'package:cahaya_halim_pool/views/contact/contact_detail.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel_footer.dart';
import 'package:cahaya_halim_pool/views/home/home_content.dart';
import 'package:cahaya_halim_pool/views/home/home_design.dart';
import 'package:cahaya_halim_pool/views/home/stack_image.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      HomeCarrousel(),
      HomeContent(),
      SizedBox(
        height: 50,
      ),
      StackImages(),
      SizedBox(
        height: 50,
      ),
      ContactDetail(),
      HomeDesign(),
      SizedBox(
        height: 50,
      ),
      HomeCarrouselFooter(),
      FooterView(),
    ]);
  }
}
