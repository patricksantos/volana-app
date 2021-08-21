import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:volana/domain/facades/i_auth_facade.dart';

part 'jogador_store.g.dart';

class JogadorStore = _JogadorStoreBase with _$JogadorStore;

abstract class _JogadorStoreBase with Store {
  final IAuthFacade _auth;
  @observable
  bool visible = false;

  _JogadorStoreBase(this._auth);

  @observable
  bool isLoading = false;
  @observable
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @action
  void isVisible() {
    visible == true ? visible = false : visible = true;
  }

  @action
  Future<void> signOut() async {
    isLoading = true;
    try {
      await _auth.getUserFirebase();
      _auth.signOut();
      Modular.to.pushReplacementNamed("/login");
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
      const msg = "Ocorreu um erro! Verifique suas credenciais!";
      // ignore: deprecated_member_use
      scaffoldKey.currentState!.showSnackBar(
        const SnackBar(
          content: Text(msg),
          backgroundColor: Colors.red,
        ),
      );
    } finally {
      isLoading = false;
    }
  }
}
