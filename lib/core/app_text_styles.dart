import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superhero_app/core/app_colors.dart';

class AppTextStyles {
  static final TextStyle cHeadingTextStyle = GoogleFonts.poppins(
    color: AppColors.cTextDefaultColor,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle cTextFieldTextStyle = GoogleFonts.poppins(
    fontSize: 18,
    color: AppColors.cTextWhiteColor,
  );

  static final TextStyle cDescriptionItemHome =
      GoogleFonts.poppins(fontSize: 14, color: AppColors.cTextDarkColor);

  static final TextStyle cTitleItemHome = GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.cTextDarkColor,
      fontWeight: FontWeight.bold);

  static final TextStyle cTitleItemDetail = GoogleFonts.poppins(
      fontSize: 16,
      color: AppColors.cTextDarkColor,
      fontWeight: FontWeight.bold);

  static final TextStyle cSubItemDetail =
      GoogleFonts.poppins(fontSize: 14, color: AppColors.cTextVarDarkColor);

  static final TextStyle cDescriptionItemDetail = GoogleFonts.poppins(
      fontSize: 14,
      color: AppColors.cTextDarkColor,
      fontWeight: FontWeight.bold);
}
