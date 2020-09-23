import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:cahaya_halim_pool/datamodels/navbar_item_model.dart';
import 'package:cahaya_halim_pool/widgets/course_details/hand_cursor.dart';

class NavBarItemTabletDesktop extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return HandCursor(
      child: Text(
        model.title,
        style: TextStyle(
          fontSize: 14,
          wordSpacing: 1,
          fontFamily: 'Open Sans',
        ),
      ),
    );
  }
}
