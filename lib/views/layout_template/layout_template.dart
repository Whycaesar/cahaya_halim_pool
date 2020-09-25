import 'package:cahaya_halim_pool/widgets/centered_view/centered_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cahaya_halim_pool/widgets/navigation_bar/navigation_bar.dart';
import 'package:cahaya_halim_pool/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatefulWidget {
  final Widget child;
  const LayoutTemplate({Key key, @required this.child}) : super(key: key);

  @override
  _LayoutTemplateState createState() => _LayoutTemplateState();
}

class _LayoutTemplateState extends State<LayoutTemplate> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        body: CenteredView(
          child: Container(
            child: Scrollbar(
              child: Column(
                children: <Widget>[
                  NavigationBar(),
                  Expanded(
                    child: widget.child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
