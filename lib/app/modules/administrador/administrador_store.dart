import 'package:mobx/mobx.dart';

part 'administrador_store.g.dart';

class AdministradorStore = _AdministradorStoreBase with _$AdministradorStore;
abstract class _AdministradorStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}