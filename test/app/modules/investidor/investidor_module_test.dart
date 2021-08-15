import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:volana/app/modules/investidor/investidor_module.dart';
 
void main() {

  setUpAll(() {
    initModule(InvestidorModule());
  });
}