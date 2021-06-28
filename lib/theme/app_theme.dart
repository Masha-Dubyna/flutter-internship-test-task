import 'package:flutter/material.dart';
import 'package:flutter_internship_test_task/theme/color_theme.dart';

class AppTheme {
  static ThemeData lightAppTheme() {
    return ThemeData.light().copyWith(
      primaryColor: ColorPalette.blue,
      textTheme: TextTheme(
        bodyText1: TextStyle(
          fontSize: 18,
          color: Colors.black,
          letterSpacing: 1
        ),
        bodyText2: TextStyle(
          fontSize: 16,
          color: Colors.grey[500],
          letterSpacing: 0.5
        )
      )
    );
  }

}