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
}
