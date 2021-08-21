import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:volana/core/enums/user_type.dart';

import 'package:volana/domain/facades/i_auth_facade.dart';
import 'package:volana/domain/facades/i_database_facade.dart';
import 'package:volana/infra/models/user_model.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final IAuthFacade _auth;
  final IDatabaseFacade _database;

  _LoginStoreBase(this._auth, this._database);

  @observable
  bool isLoading = false;

  @observable
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @observable
  TextEditingController controllerEmail = TextEditingController();
  @observable
  TextEditingController controllerSenha = TextEditingController();

  @action
  Future<void> login() async {
    isLoading = true;
    try {
      await _auth
          .login(email: controllerEmail.text, password: controllerSenha.text)
          .then(
        (value) async {
          final r = await _database.getUser(uid: value);

          final userModel = UserModel(
            nome: r.nome,
            email: r.email,
            password: r.password,
            ronins: r.ronins,
            userType: r.userType,
          );

          UserType.ADMINISTRADOR.index;

          if (userModel.userType == UserType.JOGADOR) {
            Modular.to.pushReplacementNamed("/jogador"
                // arguments: userModel,
                );
          } else if (userModel.userType == UserType.ADMINISTRADOR) {
            Modular.to.pushReplacementNamed("/administrador");
          } else if (userModel.userType == UserType.INVESTIDOR) {
            Modular.to.pushReplacementNamed("/investidor");
          }
        },
      );
    } on PlatformException catch (err) {
      final msg = err.message ?? "Ocorreu um erro! Verifique suas credenciais!";
      // ignore: deprecated_member_use
      scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      isLoading = false;
    }
  }
}
