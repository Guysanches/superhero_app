import 'package:flutter/material.dart';
import 'package:superhero_app/core/app_colors.dart';

class AppGradients {
  static final linear = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.cSecundaryGradientColor,
      AppColors.cPrimaryGradientColor,
    ],
  );
}
