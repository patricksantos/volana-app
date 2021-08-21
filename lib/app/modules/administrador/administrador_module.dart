import 'package:volana/app/modules/administrador/administrador_Page.dart';
import 'package:volana/app/modules/administrador/administrador_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/infra/repositories/auth_repository.dart';

class AdministradorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AdministradorStore(i())),
    Bind.singleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const AdministradorPage()),
  ];
}
