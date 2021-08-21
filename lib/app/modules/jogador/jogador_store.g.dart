// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jogador_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$JogadorStore on _JogadorStoreBase, Store {
  final _$visibleAtom = Atom(name: '_JogadorStoreBase.visible');

  @override
  bool get visible {
    _$visibleAtom.reportRead();
    return super.visible;
  }

  @override
  set visible(bool value) {
    _$visibleAtom.reportWrite(value, super.visible, () {
      super.visible = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_JogadorStoreBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$scaffoldKeyAtom = Atom(name: '_JogadorStoreBase.scaffoldKey');

  @override
  GlobalKey<ScaffoldState> get scaffoldKey {
    _$scaffoldKeyAtom.reportRead();
    return super.scaffoldKey;
  }

  @override
  set scaffoldKey(GlobalKey<ScaffoldState> value) {
    _$scaffoldKeyAtom.reportWrite(value, super.scaffoldKey, () {
      super.scaffoldKey = value;
    });
  }

  final _$signOutAsyncAction = AsyncAction('_JogadorStoreBase.signOut');

  @override
  Future<void> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$_JogadorStoreBaseActionController =
      ActionController(name: '_JogadorStoreBase');

  @override
  void isVisible() {
    final _$actionInfo = _$_JogadorStoreBaseActionController.startAction(
        name: '_JogadorStoreBase.isVisible');
    try {
      return super.isVisible();
    } finally {
      _$_JogadorStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
visible: ${visible},
isLoading: ${isLoading},
scaffoldKey: ${scaffoldKey}
    ''';
  }
}
