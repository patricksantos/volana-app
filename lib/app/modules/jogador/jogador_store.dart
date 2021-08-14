import 'package:mobx/mobx.dart';

part 'jogador_store.g.dart';

class JogadorStore = _JogadorStoreBase with _$JogadorStore;
abstract class _JogadorStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}