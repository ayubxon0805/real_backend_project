import 'package:shared_preferences/shared_preferences.dart';

class SharedService {
  SharedService._();
  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future setStringData(String value, String key) async {
    return prefs.setString(key, value);
  }

  static String getStringData(String key, String defValue) {
    String retData = prefs.getString(key) ?? defValue;
    return retData;
  }
}

class PrefKeys {
  PrefKeys._();
  static String aToken = 'aToken';
  static String rToken = 'rToken';
}
