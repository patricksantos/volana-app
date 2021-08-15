import 'package:flutter/material.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class LembrarConta extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;

  const LembrarConta({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          checkColor: AppColors.grey,
          focusColor: AppColors.grey,
          activeColor: AppColors.whiteMilk,
        ),
        Text(
          'Lembrar conta',
          style: TextStyles.lembrarConta,
        )
      ],
    );
  }
}
