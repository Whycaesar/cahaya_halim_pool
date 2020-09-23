import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_construction_desktop.dart';
import 'package:cahaya_halim_pool/views/pool_construction/pool_constuction_mobile.dart';

class PoolConstructionView extends StatelessWidget {
  const PoolConstructionView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: PoolConstuctionMobile(),
      desktop: PoolConstuctionDesktop(),
    );
  }
}
