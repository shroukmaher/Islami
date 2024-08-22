import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyle{
  static  TextStyle appBarTextStyle = const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.lightBlack);
  static  TextStyle mediumTitleTextStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.lightBlack);
  static  TextStyle regularTitleTextStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.lightBlack);

static ThemeData lightTheme=ThemeData(
  scaffoldBackgroundColor: AppColors.transparent,
  primaryColor: AppColors.lightPrimary,
  appBarTheme: AppBarTheme(backgroundColor:AppColors.transparent,titleTextStyle: AppStyle.appBarTextStyle,
  elevation: 0,
  centerTitle: true),
    switchTheme: SwitchThemeData(
        trackColor: MaterialStateProperty.all(AppColors.lightPrimary)
    ),
    textTheme: TextTheme(displayLarge:  mediumTitleTextStyle)
, bottomNavigationBarTheme: BottomNavigationBarThemeData(
  selectedItemColor: AppColors.lightPrimary
)
);

static ThemeData darkTheme=ThemeData(
  scaffoldBackgroundColor: AppColors.transparent,
  primaryColor: AppColors.darkPrimary,
  appBarTheme: AppBarTheme(
      backgroundColor:AppColors.transparent,titleTextStyle: AppStyle.appBarTextStyle,
  elevation: 0,
  centerTitle: true),
    switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all(AppColors.darkPrimary)
),
  textTheme: TextTheme(displayLarge:  mediumTitleTextStyle,),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: AppColors.yellow,
    )
);

}