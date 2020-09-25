import 'package:cahaya_halim_pool/classes/language.dart';
import 'package:cahaya_halim_pool/localization/localization_constant.dart';
import 'package:cahaya_halim_pool/main.dart';
import 'package:cahaya_halim_pool/views/contact/contact_detail_mobile.dart';
import 'package:cahaya_halim_pool/views/footer/footer_view.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel.dart';
import 'package:cahaya_halim_pool/views/home/home_carrousel_footer_mobile.dart';
import 'package:cahaya_halim_pool/views/home/home_video.dart';
import 'package:cahaya_halim_pool/widgets/dark_theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeContentMobile extends StatefulWidget {
  @override
  _HomeContentMobileState createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends State<HomeContentMobile> {
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

  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);
    return ListView(
      // padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FlatButton(
              // child: Text(
              //   getTranslated(context, 'home_page'),
              // ),
              child: Text(
                getTranslated(context, 'dark_theme'),
              ),
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
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 40,
                  // left: 120,
                  // right: 120,
                ),
                // height: MediaQuery.of(context).size.height * 1,
                width: MediaQuery.of(context).size.width * 0.8 - 11,
                // color: Colors.blue,
                child: Column(
                  children: [
                    Text(
                      getTranslated(context, 'home_tittle'),
                      style: TextStyle(
                        fontSize: 24,

                        // letterSpacing: 1.4,
                        color: Colors.blue,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      getTranslated(context, 'home_description'),
                      style: TextStyle(
                        fontSize: 14,
                        letterSpacing: 1.4,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.8 - 11,
                // color: Colors.green,
                child: HomeVideo(),
              ),
            ],
          ),
        ),
        SizedBox(height: 50),
        Stack(
          children: [
            Container(
              // alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "images/homeicon5.jpg",
                width: MediaQuery.of(context).size.width * 1,
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // SizedBox(
                //   width: 30,
                // ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 5,
                      bottom: 30,
                    ),
                    child: Image.asset(
                      "images/homeicon1.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 5,
                      bottom: 30,
                    ),
                    child: Image.asset(
                      "images/homeicon2.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 5,
                      bottom: 30,
                    ),
                    child: Image.asset(
                      "images/homeicon3.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 5,
                      bottom: 30,
                    ),
                    child: Image.asset(
                      "images/homeicon4.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        ContactDetailMobile(),
        Container(
          padding: EdgeInsets.all(50),
          color: Colors.grey,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Image.asset(
                  'images/assets/layoutDesign.JPG',
                  width: MediaQuery.of(context).size.width * 1,
                  // height: 300,
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Column(
                  children: [
                    Text(
                      getTranslated(context, 'home_design_tittle'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      getTranslated(context, 'home_design_description'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        letterSpacing: 1,
                        height: 2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 50,
        ),
        HomeCarrouselFooterMobile(),
        FooterView(),
      ],
    );
  }
}
