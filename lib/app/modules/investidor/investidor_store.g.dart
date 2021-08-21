// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'investidor_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InvestidorStore on _InvestidorStoreBase, Store {
  final _$visibleAtom = Atom(name: '_InvestidorStoreBase.visible');

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

  final _$isLoadingAtom = Atom(name: '_InvestidorStoreBase.isLoading');

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

  final _$scaffoldKeyAtom = Atom(name: '_InvestidorStoreBase.scaffoldKey');

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

  final _$signOutAsyncAction = AsyncAction('_InvestidorStoreBase.signOut');

  @override
  Future<void> signOut() {
    return _$signOutAsyncAction.run(() => super.signOut());
  }

  final _$_InvestidorStoreBaseActionController =
      ActionController(name: '_InvestidorStoreBase');

  @override
  void isVisible() {
    final _$actionInfo = _$_InvestidorStoreBaseActionController.startAction(
        name: '_InvestidorStoreBase.isVisible');
    try {
      return super.isVisible();
    } finally {
      _$_InvestidorStoreBaseActionController.endAction(_$actionInfo);
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
