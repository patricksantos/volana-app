import 'package:flutter/material.dart';

import 'package:volana/core/components/card_historico.dart';
import 'package:volana/core/themes/app_images.dart';

class HistoricoSLP extends StatelessWidget {
  final Color? color;
  const HistoricoSLP({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardHistorico(
          color: color,
          icon: AppImages.slp,
          slpDiario: "210 SLP",
          title: "Data",
          totalSlp: "Total de SLP",
        ),
        CardHistorico(
          color: color,
          icon: AppImages.slp,
          slpDiario: "210 SLP",
          title: "Data",
          totalSlp: "Total de SLP",
        ),
        CardHistorico(
          color: color,
          icon: AppImages.slp,
          slpDiario: "210 SLP",
          title: "Data",
          totalSlp: "Total de SLP",
        ),
        CardHistorico(
          color: color,
          icon: AppImages.slp,
          slpDiario: "210 SLP",
          title: "Data",
          totalSlp: "Total de SLP",
        ),
        CardHistorico(
          color: color,
          icon: AppImages.slp,
          slpDiario: "210 SLP",
          title: "Data",
          totalSlp: "Total de SLP",
        ),
      ],
    );
  }
}
