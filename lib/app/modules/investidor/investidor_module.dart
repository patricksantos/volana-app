import 'package:volana/app/modules/investidor/investidor_Page.dart';
import 'package:volana/app/modules/investidor/investidor_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:volana/infra/repositories/auth_repository.dart';

class InvestidorModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => InvestidorStore(i())),
    Bind.singleton((i) => AuthRepository()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const InvestidorPage()),
  ];
}
