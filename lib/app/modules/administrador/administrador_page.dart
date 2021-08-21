import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volana/app/modules/administrador/administrador_store.dart';
import 'package:volana/core/components/card_lucros.dart';
import 'package:volana/core/components/card_page.dart';
import 'package:volana/core/components/historico_slp.dart';
import 'package:volana/core/components/loading.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_images.dart';
import 'package:volana/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class AdministradorPage extends StatefulWidget {
  final String title;
  const AdministradorPage({Key? key, this.title = 'AdministradorPage'})
      : super(key: key);
  @override
  AdministradorPageState createState() => AdministradorPageState();
}

class AdministradorPageState extends State<AdministradorPage> {
  final AdministradorStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
            backgroundColor: AppColors.orange,
          ),
          body: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              color: AppColors.blackLight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          color: AppColors.whiteMilk,
                          icon: const Icon(Icons.logout),
                          onPressed: () => store.signOut(),
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(
                    AppImages.logoName,
                    semanticsLabel: 'Logo',
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    height: 100.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: CardPage(
                            titlePage: 'Metas',
                            logo: AppImages.logo,
                            onTap: () {},
                          ),
                        ),
                        CardPage(
                          titlePage: 'Metas',
                          logo: AppImages.logo,
                          onTap: () {},
                        ),
                        CardPage(
                          titlePage: 'Metas',
                          logo: AppImages.logo,
                          onTap: () {},
                        ),
                        CardPage(
                          titlePage: 'Metas',
                          logo: AppImages.logo,
                          onTap: () {},
                        ),
                        CardPage(
                          titlePage: 'Metas',
                          logo: AppImages.logo,
                          onTap: () {},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: CardPage(
                            titlePage: 'Metas',
                            logo: AppImages.logo,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Observer(builder: (_) {
                    return CardLucros(
                      color: AppColors.blackGrey,
                      isVisible: store.isVisible,
                      visible: store.visible,
                    );
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, bottom: 10.0, left: 25),
                        child: Text(
                          "Historico de SLP",
                          style: TextStyles.textHistorico,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: HistoricoSLP(
                      color: AppColors.blackGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Observer(builder: (_) {
          if (store.isLoading) {
            return const Loading();
          } else {
            return Container();
          }
        }),
      ],
    );
  }
}
