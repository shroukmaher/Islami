import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppStyle{
  static  TextStyle appBarTextStyle = const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.lightBlack);
  static  TextStyle mediumTitleTextStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.lightBlack);
  static  TextStyle regularTitleTextStyle = const TextStyle(
      fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.lightBlack);
}