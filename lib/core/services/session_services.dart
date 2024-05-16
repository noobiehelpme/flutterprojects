import 'package:gauthentication/core/constants/keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SessionServices {
  static late final SharedPreferences prefs;
  static openSession() async {
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> storageSession({required String token}) async =>
      prefs.setString(Keys.sessionKey, token);

  static String reteiveSession() => prefs.getString(Keys.sessionKey) ?? '';

  static Future<bool> clearSession() async => await prefs.clear();
}
