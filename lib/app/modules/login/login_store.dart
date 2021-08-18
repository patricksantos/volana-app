import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:volana/core/enums/user_type.dart';

import 'package:volana/domain/facades/i_auth_facade.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final IAuthFacade _auth;
  _LoginStoreBase(this._auth);

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
          .login(
        email: controllerEmail.text,
        password: controllerSenha.text,
      )
          .then((value) {
        const user = UserType.ADMINISTRADOR;
        if (user == UserType.JOGADOR) {
          Modular.to.pushReplacementNamed("/jogador");
        } else if (user == UserType.ADMINISTRADOR) {
          Modular.to.pushReplacementNamed("/administrador");
        } else if (user == UserType.INVESTIDOR) {
          Modular.to.pushReplacementNamed("/investidor");
        }
      });
    } on PlatformException catch (err) {
      final msg = err.message ?? "Ocorreu um erro! Verifique suas credenciais!";
      // ignore: deprecated_member_use
      scaffoldKey.currentState!.showSnackBar(
        SnackBar(
          content: Text(msg),
          backgroundColor: Colors.red,
        ),
      );
    } catch (err) {
      final msg = err.toString().split('] ')[1];
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
