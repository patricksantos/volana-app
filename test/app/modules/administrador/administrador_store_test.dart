import 'package:flutter_test/flutter_test.dart';
import 'package:volana/app/modules/administrador/administrador_store.dart';
 
void main() {
  late AdministradorStore store;

  setUpAll(() {
    store = AdministradorStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}