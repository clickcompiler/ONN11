import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String LAGUAGE_CODE = 'languageCode';

//languages code
const String ENGLISH = 'en';

const String HINDI = 'hi';
const String BENGALI = 'be';
const String GUJRATI = 'gu';
const String TAMIL = 'ta';
const String TELGU = 'te';
const String URDU = 'ur';

Future<Locale> setLocale(String languageCode) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String languageCode = prefs.getString(LAGUAGE_CODE) ?? ENGLISH;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return const Locale(ENGLISH, '');

    case HINDI:
      return const Locale(HINDI, "");
    case BENGALI:
      return const Locale(BENGALI, "");
    case GUJRATI:
      return const Locale(GUJRATI, "");
    case TAMIL:
      return const Locale(TAMIL, "");
    case TELGU:
      return const Locale(TELGU, "");
    case URDU:
      return const Locale(URDU, "");
    default:
      return const Locale(ENGLISH, '');
  }
}

// AppLocalizations translation(BuildContext context) {
//   return AppLocalizations.of(context)!;
// }
