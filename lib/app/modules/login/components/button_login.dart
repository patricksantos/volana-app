import 'package:flutter/material.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class ButtonLogin extends StatelessWidget {
  final double height;
  final double width;

  const ButtonLogin({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 8,
        primary: AppColors.whiteMilk,
        onPrimary: AppColors.whiteMilk,
        fixedSize: Size(width, height),
      ),
      onPressed: () {},
      child: Text(
        'Entrar',
        style: TextStyles.textButton,
      ),
    );
  }
}
