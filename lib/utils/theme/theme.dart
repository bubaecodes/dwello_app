import 'package:dwello_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class DwelloAppTheme {
  DwelloAppTheme._();


  ///Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Bricolage Grotesque",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColors.whiteBg,
    //textTheme: TTextTheme.lightTextTheme,

  );

  ///Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Bricolage Grotesque",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColors.blueBg,
    //textTheme: TTextTheme.darkTextTheme,
  );
}