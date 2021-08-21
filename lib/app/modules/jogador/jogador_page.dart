import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volana/app/modules/jogador/jogador_store.dart';
import 'package:volana/core/components/card_lucros.dart';
import 'package:volana/core/components/card_page.dart';
import 'package:volana/core/components/historico_slp.dart';
import 'package:volana/core/components/loading.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_images.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class JogadorPage extends StatefulWidget {
  final String title;
  const JogadorPage({Key? key, this.title = 'JogadorPage'}) : super(key: key);
  @override
  JogadorPageState createState() => JogadorPageState();
}

class JogadorPageState extends State<JogadorPage> {
  final JogadorStore store = Modular.get();
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: AppColors.purple,
                title: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: AnimSearchBar(
                          color: AppColors.purpleLight,
                          style: TextStyles.loadingText,
                          width: size.width * 0.75,
                          textController: textController,
                          helpText: "Pesquisar Axie...",
                          onSuffixTap: () {},
                        ),
                      ),
                      IconButton(
                        color: AppColors.whiteMilk,
                        icon: const Icon(Icons.logout),
                        onPressed: () => store.signOut(),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Container(
                      width: double.infinity,
                      color: AppColors.purple,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            AppImages.brasao,
                            semanticsLabel: 'Logo',
                            height: 100,
                            width: 100,
                          ),
                          const SizedBox(height: 20),
                          SizedBox(
                            height: 100.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
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
                              ],
                            ),
                          ),
                          Observer(builder: (_) {
                            return CardLucros(
                              color: AppColors.purpleLight,
                              isVisible: store.isVisible,
                              visible: store.visible,
                            );
                          }),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 20.0,
                                  bottom: 10.0,
                                  left: 25,
                                ),
                                child: Text(
                                  "Historico de SLP",
                                  style: TextStyles.textHistorico,
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 20.0),
                            child: HistoricoSLP(
                              color: AppColors.purpleLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
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
