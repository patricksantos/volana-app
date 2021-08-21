import 'package:volana/app/modules/login/login_Page.dart';
import 'package:volana/app/modules/login/login_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/infra/repositories/auth_repository.dart';
import 'package:volana/infra/repositories/database_repository.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore(i(), i())),
    Bind.singleton((i) => AuthRepository()),
    Bind.lazySingleton((i) => DatabaseRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const LoginPage()),
  ];
}
