import 'package:cahaya_halim_pool/auth.services.dart';
import 'package:cahaya_halim_pool/classes/language.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/main.dart';
import 'package:cahaya_halim_pool/views/contact/contact_detail.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel_footer.dart';
import 'package:cahaya_halim_pool/views/home/home_content.dart';
import 'package:cahaya_halim_pool/views/home/home_design.dart';
import 'package:cahaya_halim_pool/views/home/stack_image.dart';
import 'package:cahaya_halim_pool/widgets/dark_theme/dark_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeContentDesktop extends StatefulWidget {
  // HomeContentDesktop(this.user);
  @override
  _HomeContentDesktopState createState() => _HomeContentDesktopState();
}

class _HomeContentDesktopState extends State<HomeContentDesktop> {
  void _changeLanguage(Language language) {
    // print(language.languageCode);
    Locale _temp;
    switch (language.languageCode) {
      case 'en':
        _temp = Locale(language.languageCode, 'US');
        break;
      case 'id':
        _temp = Locale(language.languageCode, 'ID');
        break;
      default:
        _temp = Locale(language.languageCode, 'US');
    }

    MaterialAppWithTheme.setLocale(context, _temp);
  }

  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return ListView(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(auth.currentUser.uid.toString()),
          RaisedButton(onPressed: () {
            AuthServices.signOut();
          }),
          FlatButton(
            child: Text(
              getTranslated(context, 'dark_theme'),
            ),
            // child: Text("Dark Theme"),
            onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
          ),
          FlatButton(
            child: Text(
              getTranslated(context, 'light_theme'),
            ),
            onPressed: () => _themeChanger.setTheme(ThemeData.light()),
          ),
          Container(
            // width: 100,
            // color: Colors.red,

            child: DropdownButton(
              hint: Text("Language"),
              dropdownColor: Colors.grey,
              elevation: 5,
              onChanged: (Language language) {
                _changeLanguage(language);
                // Navigator.pop(context);
              },
              icon: Icon(
                Icons.language,
                color: Colors.grey,
                // size: 50,
              ),
              underline: SizedBox(),
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>((lang) => DropdownMenuItem(
                        value: lang,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(lang.flag),
                            Text(lang.name),
                          ],
                        ),
                      ))
                  .toList(),
            ),
            width: 120,

            // alignment: Alignment.center,
            // decoration: ShapeDecoration(
            //   shape: RoundedRectangleBorder(
            //     side: BorderSide(width: 1.0, style: BorderStyle.solid),
            //     borderRadius: BorderRadius.all(Radius.circular(150.0)),
            //   ),
            // ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
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
