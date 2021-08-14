import 'package:mobx/mobx.dart';

part 'investidor_store.g.dart';

class InvestidorStore = _InvestidorStoreBase with _$InvestidorStore;
abstract class _InvestidorStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}