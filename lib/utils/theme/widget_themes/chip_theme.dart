import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';

class TChipTheme {
  TChipTheme._();

  // ignore: prefer_const_constructors
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AppColors.grey,
    labelStyle: const TextStyle(color: AppColors.black),
    selectedColor: AppColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AppColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: AppColors.darkerGrey,
    labelStyle: TextStyle(color: AppColors.white),
    selectedColor: AppColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AppColors.white,
  );
}
