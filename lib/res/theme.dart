import 'package:flutter/material.dart';
import 'package:home_rent/utils/color.dart';

final appTheme = ThemeData(
    primarySwatch: AppColors.primaryMaterialColor,
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
        color: AppColors.whiteColor,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontSize: 22,
            color: AppColors.primaryColor)),
    textTheme: const TextTheme(
      headline1: TextStyle(
          fontSize: 40,
          color: AppColors.primaryTextTextColor,
          fontWeight: FontWeight.w500,
          height: 1.6),
      headline2: TextStyle(
          fontSize: 32,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
          height: 1.6),
      headline3: TextStyle(
          fontSize: 28,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
          height: 1.6),
      headline4: TextStyle(
          fontSize: 24,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
          height: 1.6),
      headline5: TextStyle(
          fontSize: 20,
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
          height: 1.6),
      headline6: TextStyle(
          fontSize: 17,
          color: AppColors.textPrimary,
          height: 1.6),
      bodyText1: TextStyle(
          fontSize: 17,
          color: AppColors.textPrimary,
          height: 1.6),
      bodyText2: TextStyle(
          fontSize: 14,
          color: AppColors.textPrimary,
          height: 1.6),
      caption: TextStyle(
          fontSize: 12,
          color: AppColors.textPrimary,
          height: 2.26),
    ));
