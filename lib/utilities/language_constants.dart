import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

const String LANGUAGE_CODE = 'languageCode';

const String ENGLISH = 'en';
const String GERMAN = 'de';
const String FRENCH = 'fr';
const String RUSSIAN = 'ru';
const String TURKISH = 'tr';
//const String TURKMEN = 'tk';
const String ARABIC = 'ar';
const String FARSI = 'fa';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LANGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(LANGUAGE_CODE) ?? ENGLISH;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return Locale(ENGLISH, 'EN');
    case GERMAN:
      return Locale(GERMAN, 'DE');
    case FRENCH:
      return Locale(FRENCH, 'FR');
    case RUSSIAN:
      return Locale(RUSSIAN, 'RU');
    case TURKISH:
      return Locale(TURKISH, 'TR');
    //case TURKMEN:
      //return Locale(TURKMEN, 'TK');
    case ARABIC:
      return Locale(ARABIC, 'AR');
    case FARSI:
      return Locale(FARSI, 'FA');
    default:
      return Locale(ENGLISH, 'EN');
  }
}

AppLocalizations translation(BuildContext context) {
  return AppLocalizations.of(context);
}
