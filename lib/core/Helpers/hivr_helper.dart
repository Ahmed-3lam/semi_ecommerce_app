import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HiveHelper {
  ///Language
  static var KEY_BOX_APP_LANGUAGE = "KEY_BOX_APP_LANGUAGE";
  static const myToken = "TOKEN";
  static var myTokenBox = Hive.box(myToken);
  static ValueNotifier<Locale> mobileLanguage = ValueNotifier(Locale(
      '${Hive.box(HiveHelper.KEY_BOX_APP_LANGUAGE).get(HiveHelper.KEY_BOX_APP_LANGUAGE) != null}',
      'eg'));

  static void setLanguage(String langCode) async {
    Hive.box(KEY_BOX_APP_LANGUAGE).put(KEY_BOX_APP_LANGUAGE, langCode);
  }

  static String? getLanguage() {
    return Hive.box(KEY_BOX_APP_LANGUAGE).get(KEY_BOX_APP_LANGUAGE);
  }

  static const KEY_BOX_LOGIN_RESPONSE = "boxKeyLoginResponse";
  static const KEY_BOX_TOKEN = "boxKeyUserToken";

  static setToken(String token) async {
    await myTokenBox.put(myToken, token);
  }

  static String getToken() {
    if (myTokenBox.isNotEmpty) {
      return myTokenBox.get(myToken);
    } else {
      return "";
    }
  }
}
