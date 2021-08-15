import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/app/modules/login/login_module.dart';
import 'package:volana/app/modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/login', module: LoginModule()),
  ];
}
