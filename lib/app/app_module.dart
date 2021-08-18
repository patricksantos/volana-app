import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/app/modules/administrador/administrador_module.dart';
import 'package:volana/app/modules/investidor/investidor_module.dart';
import 'package:volana/app/modules/jogador/jogador_module.dart';
import 'package:volana/app/modules/login/login_module.dart';
import 'package:volana/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/jogador', module: JogadorModule()),
    ModuleRoute('/administrador', module: AdministradorModule()),
    ModuleRoute('/investidor', module: InvestidorModule()),
  ];
}
