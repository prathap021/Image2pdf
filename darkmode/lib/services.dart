import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    primaryColor: Colors.indigo,
  );
  final darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.black,
  );
}

class ThemeService {
  final _getStorage = GetStorage();
  final storagekey = "isDarkMode";
  ThemeMode getThemeMode() {
    return isSavedDarkMode() ? ThemeMode.dark : ThemeMode.light;
  }

  bool isSavedDarkMode() {
    return _getStorage.read(storagekey) ?? false;
  }

  void saveThemeMode(bool isDarkMode) {
    _getStorage.write(storagekey, isDarkMode);
  }

  void changeThemeMode() {
    Get.changeThemeMode(isSavedDarkMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemeMode(!isSavedDarkMode());
  }
}
