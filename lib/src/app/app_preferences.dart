import 'package:shared_preferences/shared_preferences.dart';

const String prefKeyOnLoadingScreen = 'PREF_KEY_SCREEN_ON_LOADING_SCREEN';
const String prefKeyIsUserLoggedIn = 'PREF_KEY_IS_USER_LOGGED_IN';

class AppPreferences {
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);

  Future<void> setOnLoadingScreenViewed() async {
    _sharedPreferences.setBool(prefKeyOnLoadingScreen, true);
  }

  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(prefKeyIsUserLoggedIn, true);
  }

  Future<bool> isOnLoadingScreenViewed() async {
    return _sharedPreferences.getBool(prefKeyOnLoadingScreen) ?? false;
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(prefKeyIsUserLoggedIn) ?? false;
  }
}
