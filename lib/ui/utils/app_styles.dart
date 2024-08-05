import 'dart:ui';

import 'app_colors.dart';

abstract class AppStyle{
  static  TextStyle appBarTextStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: AppColors.lightBlack);
  static  TextStyle mediumTitleTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w600, color: AppColors.lightBlack);
  static  TextStyle regularTitleTextStyle = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.lightBlack);
}