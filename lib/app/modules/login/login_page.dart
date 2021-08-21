import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volana/app/modules/login/components/button_login.dart';
import 'package:volana/app/modules/login/components/contato_button.dart';
import 'package:volana/app/modules/login/components/input_login.dart';
import 'package:volana/app/modules/login/components/lembrar_conta.dart';
import 'package:volana/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:volana/core/components/loading.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_images.dart';
import 'package:volana/core/themes/app_text_styles.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key? key, this.title = 'LoginPage'}) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

  @override
  void initState() {
    // final user = await auth.createUser(
    //   user: UserModel(
    //     email: 'test1@gmail.com',
    //     nome: 'teste1',
    //     password: 'test1@gmail.com',
    //     ronins: ['test1@gmail.com', 'test1@gmail.com'],
    //     userType: UserType.INVESTIDOR,
    //   ),
    // );
    // print(user);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          key: store.scaffoldKey,
          backgroundColor: AppColors.blackLight,
          body: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: size.height * 0.08),
                    child: Center(
                      child: SvgPicture.asset(
                        AppImages.logoName,
                        semanticsLabel: 'Logo',
                        height: 80,
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  Text(
                    'Faça o seu Login.',
                    style: TextStyles.titleLogin,
                  ),
                  Text(
                    'Seja Bem Vindo de volta.',
                    style: TextStyles.descriptionLogin,
                  ),
                  Text(
                    'Sentimos sua falta!',
                    style: TextStyles.descriptionLogin,
                  ),
                  const SizedBox(height: 20),
                  InputLogin(
                    key: const Key("Email"),
                    title: "Email",
                    controller: store.controllerEmail,
                  ),
                  const SizedBox(height: 8),
                  InputLogin(
                    title: "Senha",
                    key: const Key("Senha"),
                    controller: store.controllerSenha,
                  ),
                  LembrarConta(
                    value: true,
                    onChanged: (bool? bool) {},
                  ),
                  SizedBox(height: size.height * 0.06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ButtonLogin(
                        height: 60,
                        width: size.width * 0.8,
                        onTap: () => store.login(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContatoButton(
                        onTap: () {},
                      )
                    ],
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
