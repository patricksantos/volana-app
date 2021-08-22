import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/app/modules/administrador/administrador_module.dart';
import 'package:volana/app/modules/investidor/investidor_module.dart';
import 'package:volana/app/modules/jogador/jogador_module.dart';
import 'package:volana/app/modules/login/login_module.dart';
import 'package:volana/infra/repositories/auth_repository.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: LoginModule()),
    ModuleRoute('/jogador', module: JogadorModule()),
    ModuleRoute('/administrador', module: AdministradorModule()),
    ModuleRoute('/investidor', module: InvestidorModule()),
  ];
}
