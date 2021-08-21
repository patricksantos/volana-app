import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_images.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class CardLucros extends StatelessWidget {
  final Color color;
  final Function() isVisible;
  final bool visible;

  const CardLucros({
    Key? key,
    required this.color,
    required this.isVisible,
    required this.visible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 8,
            color: AppColors.whiteMilk,
            child: SizedBox(
              height: 90,
              width: size.width,
            ),
          ),
          Row(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: color,
                child: SizedBox(
                  height: 90,
                  width: size.width * 0.3,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: SvgPicture.asset(
                      AppImages.coin,
                      semanticsLabel: 'Coin',
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saldo na Conta',
                          style: TextStyles.descriptionCardHistorico,
                        ),
                        Text(
                          !visible ? "R\$ 434,18" : "*******",
                          style: TextStyles.textLucros,
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    IconButton(
                      color: AppColors.blackGrey,
                      icon: const Icon(
                        Icons.visibility,
                        size: 24,
                      ),
                      onPressed: isVisible,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
