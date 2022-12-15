import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'gu'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? guText = '',
  }) =>
      [enText, guText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'pkys59ad': {
      'en': 'Back',
      'gu': 'પાછળ',
    },
    'k82w574o': {
      'en': 'ListView',
      'gu': 'લિસ્ટવ્યુ',
    },
    'vhivo51j': {
      'en': 'Horizontal',
      'gu': 'આડું',
    },
    'c2lzs3bl': {
      'en': 'Hello World',
      'gu': 'હેલો વર્લ્ડ',
    },
    'ierj2dmh': {
      'en': 'Hello World',
      'gu': 'હેલો વર્લ્ડ',
    },
    '3r445s24': {
      'en': 'Hello World',
      'gu': 'હેલો વર્લ્ડ',
    },
    'pxymg884': {
      'en': 'Vertical',
      'gu': 'વર્ટિકલ',
    },
    'l8uhfkn6': {
      'en': 'Vertical',
      'gu': 'વર્ટિકલ',
    },
    'gyqbowjt': {
      'en': 'Vertical',
      'gu': 'વર્ટિકલ',
    },
    'v9npgk1q': {
      'en': 'Vertical',
      'gu': 'વર્ટિકલ',
    },
    '8oq5eqfs': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // LocalPage
  {
    '3vihnzxz': {
      'en': 'FruiteList',
      'gu': 'ફ્રુટલિસ્ટ',
    },
    'f9or3zm1': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // LocalPageFavourite
  {
    'nzwlegik': {
      'en': 'Favourite  Fruite List',
      'gu': 'મનપસંદ ફળોની સૂચિ',
    },
    '9uwf7bkj': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // FirebasePage
  {
    'x8v4hmlx': {
      'en': 'FirebaseFruiteList',
      'gu': 'FirebaseFruiteList',
    },
    'h9duv4kg': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // FirebasePageFavouritePage
  {
    'hko8yr7m': {
      'en': 'FirebaseFavouriteFruiteList',
      'gu': 'ફાયરબેઝ ફેવરિટ ફ્રૂટલિસ્ટ',
    },
    '9dn2wdgh': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // MainPage
  {
    'xykpwjd6': {
      'en': 'Simple Ui',
      'gu': 'સરળ Ui',
    },
    'ge18l8zm': {
      'en': 'Locale State ',
      'gu': 'સ્થાનિક રાજ્ય',
    },
    '0sw13lnf': {
      'en': 'Firestore DataBase',
      'gu': 'ફાયરસ્ટોર ડેટાબેઝ',
    },
    'biu1e6js': {
      'en': 'Firebase Authentication',
      'gu': 'ફાયરબેઝ પ્રમાણીકરણ',
    },
    'gqzbgtwy': {
      'en': 'Api call',
      'gu': 'ફાયરબેઝ પ્રમાણીકરણ',
    },
    's40q5h98': {
      'en': 'Custom Function',
      'gu': 'ફાયરબેઝ પ્રમાણીકરણ',
    },
    'lwo9w3nt': {
      'en': 'Custom Widget',
      'gu': 'ફાયરબેઝ પ્રમાણીકરણ',
    },
    '6qj5ivj1': {
      'en': 'Dialog',
      'gu': 'ફાયરબેઝ પ્રમાણીકરણ',
    },
    'dd1rsn9k': {
      'en': 'Custom Actions',
      'gu': 'ફાયરબેઝ પ્રમાણીકરણ',
    },
    'n0lkzeb4': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // GoogleAuthenticationPage
  {
    '18pf07g9': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // ApiPage
  {
    'qve2g8ul': {
      'en': 'Api',
      'gu': 'ફ્રુટલિસ્ટ',
    },
    'dp31fs6p': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // CustomFunctionPage
  {
    'wik51xa9': {
      'en': 'Custom Function',
      'gu': 'ફ્રુટલિસ્ટ',
    },
    'z1glx53o': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // Dialog
  {
    'vo93krtn': {
      'en': 'Dialog',
      'gu': 'ફ્રુટલિસ્ટ',
    },
    'nb2gtzao': {
      'en': 'BottomSheetDialog',
      'gu': '',
    },
    'p25sdwg3': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // CustiomWidget
  {
    'bzwbdk45': {
      'en': 'Custom Widget',
      'gu': 'ફ્રુટલિસ્ટ',
    },
    'e8orvxa3': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // CustomActionsPage
  {
    '10oom54t': {
      'en': 'Custom Actions',
      'gu': 'ફ્રુટલિસ્ટ',
    },
    'xzzmwczk': {
      'en': '',
      'gu': '',
    },
    'c4vh7dmd': {
      'en': '',
      'gu': '',
    },
    'fpgksb40': {
      'en': 'Submit',
      'gu': '',
    },
    'imx9dbja': {
      'en': 'Home',
      'gu': 'ઘર',
    },
  },
  // BottomSheet
  {
    'als53a8a': {
      'en': 'Edit Post',
      'gu': '',
    },
    '2jsk801j': {
      'en': 'Delete Story',
      'gu': '',
    },
    'pdchkh1k': {
      'en': 'Cancel',
      'gu': '',
    },
  },
  // Miscellaneous
  {
    'gmdkvkaj': {
      'en': 'Failed ',
      'gu': 'નિષ્ફળ',
    },
    'awtwukbt': {
      'en': 'Failed',
      'gu': 'નિષ્ફળ',
    },
    '8xpaw0qj': {
      'en': '',
      'gu': '',
    },
    'uog00tge': {
      'en': '',
      'gu': '',
    },
    '44mj2zsp': {
      'en': '',
      'gu': '',
    },
    '3a5dl396': {
      'en': '',
      'gu': '',
    },
    'znzculov': {
      'en': '',
      'gu': '',
    },
    'pjm6ufo3': {
      'en': '',
      'gu': '',
    },
    'px5zcmxp': {
      'en': '',
      'gu': '',
    },
    '8wjhkvtw': {
      'en': '',
      'gu': '',
    },
    'b2bg7mqs': {
      'en': '',
      'gu': '',
    },
    'pbq8e19m': {
      'en': '',
      'gu': '',
    },
    'qawg63uc': {
      'en': '',
      'gu': '',
    },
    'djvqvymb': {
      'en': '',
      'gu': '',
    },
    'qulhurgn': {
      'en': '',
      'gu': '',
    },
    'wnrus7cu': {
      'en': '',
      'gu': '',
    },
    '4nd9hhy9': {
      'en': '',
      'gu': '',
    },
    'ynlbu2vc': {
      'en': '',
      'gu': '',
    },
    'l3tvzku7': {
      'en': '',
      'gu': '',
    },
    '2diqdj0c': {
      'en': '',
      'gu': '',
    },
  },
].reduce((a, b) => a..addAll(b));
