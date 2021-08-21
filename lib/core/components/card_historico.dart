import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class CardHistorico extends StatelessWidget {
  final Color? color;
  final String icon;
  final String title;
  final String totalSlp;
  final String slpDiario;
  const CardHistorico({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.totalSlp,
    required this.slpDiario,
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
              height: 85,
              width: size.width * 1,
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
                  height: 85,
                  width: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: SvgPicture.asset(
                      icon,
                      semanticsLabel: 'slp',
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyles.titleCardHistorico,
                          ),
                          Text(
                            totalSlp,
                            style: TextStyles.descriptionCardHistorico,
                          ),
                        ],
                      ),
                      Text(
                        slpDiario,
                        style: TextStyles.titleCardHistorico,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
