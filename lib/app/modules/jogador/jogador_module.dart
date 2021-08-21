import 'package:volana/app/modules/jogador/jogador_Page.dart';
import 'package:volana/app/modules/jogador/jogador_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/infra/repositories/auth_repository.dart';

class JogadorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => JogadorStore(i())),
    Bind.singleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const JogadorPage()),
  ];
}
