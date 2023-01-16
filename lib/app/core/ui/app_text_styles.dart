import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  //TEX BOLD
  static TextStyle textBold18 = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: 'Nunito',
  );
  static TextStyle textBold35 = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w700,
    color: AppColors.primary,
    fontFamily: 'Nunito',
  );

  //TEXT SEMI-BOLD
  static TextStyle textSemiBold35 = const TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    color: AppColors.secondary,
    fontFamily: 'Nunito',
  );

  //TEXT REGULAR
  static TextStyle textRegular16 = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
    fontFamily: 'Nunito',
  );
}
