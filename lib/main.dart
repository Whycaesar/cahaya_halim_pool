import 'package:cahaya_halim_pool/widgets/dark_theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/routing/router.dart';
import 'package:cahaya_halim_pool/services/navigation_service.dart';
import 'package:cahaya_halim_pool/views/layout_template/layout_template.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cahaya Halim Pool',

      theme: theme.getTheme(),

      // theme: ThemeData(

      //   primarySwatch: Colors.blue,
      //   brightness: Brightness.light,
      //   // brightness: Brightness.dark,
      //   textTheme: Theme.of(context).textTheme.apply(
      //         fontFamily: 'Open Sans',
      //         // bodyColor: Color(0xFFFFFFFF),
      //       ),

      // ),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
