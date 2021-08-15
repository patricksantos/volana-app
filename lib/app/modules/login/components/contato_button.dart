import 'package:flutter/material.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class ContatoButton extends StatelessWidget {
  final Function() onTap;
  const ContatoButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            'Esqueceu sua senha?',
            style: TextStyles.lembrarConta,
          ),
          Text(
            ' Entre em contato conosco',
            style: TextStyles.lembrarContaWhite,
          ),
        ],
      ),
    );
  }
}
