import 'package:flutter/material.dart';

class AppTheme {
  static bool isDark = true;

  /// Default constructor
  //AppTheme({required this.isDark});

  static ThemeData get themeData {
    ThemeData t = isDark ? ThemeData.dark() : ThemeData.light();
    return t;
  }
}