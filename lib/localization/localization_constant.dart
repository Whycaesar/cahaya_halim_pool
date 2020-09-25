import 'package:cahaya_halim_pool/localization/localization.dart';
import 'package:flutter/widgets.dart';

String getTranslated(BuildContext context, String key) {
  return LangLocalization.of(context).getTranslatedValue(key);
}
