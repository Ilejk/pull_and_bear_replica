import 'package:pull_and_bear_replica/src/app/constants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);

  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(Constants.prefKeyIsUserLoggedIn, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(Constants.prefKeyIsUserLoggedIn) ?? false;
  }

  Future<void> logout() async {
    _sharedPreferences.remove(Constants.prefKeyIsUserLoggedIn);
  }
}
