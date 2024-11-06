import 'package:recipes_book_app/core/shared_pref/app_prefs_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AppPreferences{
  final SharedPreferences _sharedPreferences;
  AppPreferences(this._sharedPreferences);
  //on boarding
  Future<void> setOnBoardingScreenViewed()async{
    _sharedPreferences.setBool(AppPrefsConstants.onBoardingScreenView, true);
  }
  Future<bool> isOnBoardingScreenViewed() async{
    return _sharedPreferences.getBool(AppPrefsConstants.onBoardingScreenView)??false;
  }


  Future<void> setUserLoggedIn() async {
    _sharedPreferences.setBool(AppPrefsConstants.isUserLoggedIn, true);
  }
  Future<bool> isUserLoggedIn() async{
    return _sharedPreferences.getBool(AppPrefsConstants.isUserLoggedIn)??false;
  }


  // Clear user data
  Future<void> clearUserData() async {
    await _sharedPreferences.remove(AppPrefsConstants.onBoardingScreenView);
    await _sharedPreferences.remove(AppPrefsConstants.isUserLoggedIn);
  }


}