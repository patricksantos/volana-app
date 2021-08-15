import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volana/core/themes/app_colors.dart';

class TextStyles {
  static final titleLogin = GoogleFonts.poppins(
    fontSize: 32,
    fontWeight: FontWeight.bold, //semibold
    color: AppColors.whiteMilk,
  );
  static final descriptionLogin = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: AppColors.whiteMilk,
  );
  static final lembrarConta = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.grey,
  );
  static final lembrarContaWhite = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: AppColors.whiteMilk,
  );
  static final textInput = GoogleFonts.poppins(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: AppColors.whiteMilk,
  );
  static final textButton = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: AppColors.blackLight,
  );
  static final loadingText = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: AppColors.blackLight,
  );
}
