import 'package:flutter/material.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:cahaya_halim_pool/datamodels/navbar_item_model.dart';

class NavBarItemMobile extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: Row(
        children: <Widget>[
          Icon(
            model.iconData,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            model.title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
