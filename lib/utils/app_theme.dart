import 'package:flutter/material.dart';
import 'package:news/utils/app_colors.dart';
import 'package:news/utils/app_styles.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryLight,
      scaffoldBackgroundColor: AppColors.blackColor,
      appBarTheme: const AppBarTheme(centerTitle: true),
      textTheme: TextTheme(headlineLarge: AppStyles.bold16white));

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.whiteColor,
      primaryColor: AppColors.blackColor,
      appBarTheme: AppBarTheme(centerTitle: true),
      textTheme: TextTheme(headlineLarge: AppStyles.bold16black));
}
