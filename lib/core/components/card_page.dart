import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class CardPage extends StatelessWidget {
  final String titlePage;
  final String logo;
  final Function() onTap;

  const CardPage({
    Key? key,
    required this.titlePage,
    required this.logo,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            elevation: 8,
            color: AppColors.orange,
            child: SizedBox(
              height: 60,
              width: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  logo,
                  semanticsLabel: 'Logo',
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            titlePage,
            style: TextStyles.textCard,
          ),
        ],
      ),
    );
  }
}
