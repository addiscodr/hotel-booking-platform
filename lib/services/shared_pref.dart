// services/shared_pref.dart
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  static const String userIdkey = "USERKEY";
  static const String userNameKey = "USERNAMEKEY";
  static const String userEmailKey = "USEREMAILKEY";
  static const String userImageKey = "USERIMAGEKEY";

  static SharedPreferences? _preferences;

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Safe getter to ensure _preferences is ready
  static SharedPreferences get prefs {
    if (_preferences == null) {
      throw Exception(
        "SharedPreferencesHelper not initialized. Call init() in main.dart",
      );
    }
    return _preferences!;
  }

  // SETTER FUNCTIONS
  static Future<bool> saveUserId(String userId) async {
    return await prefs.setString(userIdkey, userId);
  }

  static Future<bool> saveUserName(String userName) async {
    return await prefs.setString(userNameKey, userName);
  }

  static Future<bool> saveUserEmail(String userEmail) async {
    return await prefs.setString(userEmailKey, userEmail);
  }

  static Future<bool> saveUserImage(String userImage) async {
    return await prefs.setString(userImageKey, userImage);
  }

  // GETTER FUNCTIONS (Updated to use the safe 'prefs' getter)
  static String? getUserId() {
    return prefs.getString(userIdkey);
  }

  static String? getUserName() {
    return prefs.getString(userNameKey);
  }

  static String? getUserEmail() {
    return prefs.getString(userEmailKey);
  }

  static String? getUserImage() {
    return prefs.getString(userImageKey);
  }

  // CLEAR MEMORY SPACE
  static Future<bool> removeUserId() async {
    return await prefs.remove(userIdkey);
  }

  static Future<bool> removeUserName() async {
    return await prefs.remove(userNameKey);
  }

  static Future<bool> removeUserEmail() async {
    return await prefs.remove(userEmailKey);
  }

  static Future<bool> removeUserImage() async {
    return await prefs.remove(userImageKey);
  }

  static Future<bool> clearAllData() async {
    return await prefs.clear();
  }
}
