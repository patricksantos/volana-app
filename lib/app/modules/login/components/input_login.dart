import 'package:flutter/material.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class InputLogin extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  const InputLogin({
    Key? key,
    required this.title,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      controller: controller,
      obscureText: title == "Senha" ? true : false,
      style: TextStyles.textInput,
      cursorColor: AppColors.whiteMilk,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        fillColor: AppColors.whiteMilk.withOpacity(0.4),
        filled: true,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Color(0xFF2D2C35),
            width: 2,
          ),
        ),
        hintText: title,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          if (title == "Senha") return 'Informe sua $title';
          return 'Informe seu $title';
        }
        return null;
      },
    );
  }
}
