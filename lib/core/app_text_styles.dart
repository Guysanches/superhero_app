import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:superhero_app/core/app_colors.dart';

class AppTextStyles {
  static final TextStyle cHeadingTextStyle = GoogleFonts.poppins(
    color: AppColors.cTextDefaultColor,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static final TextStyle cTitleTextstyle = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.cTextDarkColor,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle cTitleDetailsTextstyle = GoogleFonts.poppins(
    fontSize: 18,
    color: AppColors.cTextDarkColor,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle cSubDetailsTextStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: AppColors.cTextDarkColor,
  );
  static final TextStyle cSubTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.cTextDarkColor,
  );

  static final TextStyle cFirstCaracterTextStyle = GoogleFonts.poppins(
    fontSize: 28,
    color: AppColors.cTextDefaultColor,
  );

  static final TextStyle cItemOptionTextStyle = GoogleFonts.poppins(
    fontSize: 12,
    color: AppColors.cTextDefaultColor,
  );

  static final TextStyle cButtonTextStyle = GoogleFonts.poppins(
    fontSize: 14,
    color: AppColors.cTextDefaultColor,
  );
}
