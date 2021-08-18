import 'package:volana/core/enums/user_type.dart';

abstract class IUser {
  late String nome;
  late String email;
  late String password;
  late List<String> ronins;
  late UserType userType;

  IUser({
    required this.nome,
    required this.email,
    required this.password,
    required this.ronins,
    required this.userType,
  });
}
