import 'package:volana/app/modules/jogador/jogador_Page.dart';
import 'package:volana/app/modules/jogador/jogador_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class JogadorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => JogadorStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const JogadorPage()),
  ];
}
