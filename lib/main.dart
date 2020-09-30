import 'package:cahaya_halim_pool/auth.services.dart';
import 'package:cahaya_halim_pool/localization/localization.dart';
import 'package:cahaya_halim_pool/widgets/dark_theme/dark_theme.dart';
import 'package:cahaya_halim_pool/wrapper.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cahaya_halim_pool/routing/route_names.dart';
import 'package:cahaya_halim_pool/routing/router.dart';
import 'package:cahaya_halim_pool/services/navigation_service.dart';
import 'package:cahaya_halim_pool/views/layout_template/layout_template.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StreamProvider.value(
//       value: AuthServices.firebaseUserStream,
//       child: MaterialApp(
//         home: Wrapper(),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _MaterialAppWithThemeState state =
        context.findAncestorStateOfType<_MaterialAppWithThemeState>();
    state.setLocale(locale);
  }

  @override
  _MaterialAppWithThemeState createState() => _MaterialAppWithThemeState();
}

class _MaterialAppWithThemeState extends State<MaterialAppWithTheme> {
  Locale _locale;

  User get user => null;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    return StreamProvider.value(
        value: AuthServices.firebaseUserStream,
        child: new MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cahaya Halim Pool',
          theme: theme.getTheme(),

          locale: _locale,
          supportedLocales: [
            Locale('en', 'US'),
            Locale('id', 'ID'),
          ],
          localizationsDelegates: [
            LangLocalization.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (deviceLocale, supportedLocales) {
            for (var locale in supportedLocales) {
              if (locale.languageCode == deviceLocale.languageCode &&
                  locale.countryCode == deviceLocale.countryCode) {
                return deviceLocale;
              }
            }

            return supportedLocales.first;
          },

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
          // initialRoute: HomeRoute,
          home: Wrapper(),
        ));
  }
}
