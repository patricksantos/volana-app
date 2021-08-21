import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobx/mobx.dart';
import 'package:volana/app/modules/splash/splash_store.dart';
import 'package:flutter/material.dart';
import 'package:volana/core/themes/app_colors.dart';
import 'package:volana/core/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  final SplashStore store = Modular.get();
  late ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();

    disposer = autorun((_) async {
      await Future<void>.delayed(const Duration(seconds: 2));
      Modular.to.pushReplacementNamed("/login");
    });
  }

  @override
  void dispose() {
    disposer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: AppColors.blackLight,
        child: Center(
          child: SvgPicture.asset(
            AppImages.logo,
            semanticsLabel: 'Logo',
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
