import 'package:cahaya_halim_pool/widgets/centered_view/centered_view.dart';
import 'package:cahaya_halim_pool/widgets/dark_theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:cahaya_halim_pool/widgets/navigation_bar/navigation_bar.dart';
import 'package:cahaya_halim_pool/widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        // backgroundColor: Color.fromRGBO(245, 237, 240, 1),
        // backgroundColor: Colors.black,
        body: CenteredView(
          child: Container(
            child: Scrollbar(
              child: Column(
                children: <Widget>[
                  NavigationBar(),
                  Row(
                    children: [
                      FlatButton(
                        child: Text("Dark Theme"),
                        onPressed: () =>
                            _themeChanger.setTheme(ThemeData.dark()),
                      ),
                      FlatButton(
                        child: Text("Light Theme"),
                        onPressed: () =>
                            _themeChanger.setTheme(ThemeData.light()),
                      ),
                    ],
                  ),
                  Expanded(
                    child: child,
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
