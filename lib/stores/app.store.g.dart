// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$statusAtom = Atom(name: '_AppStore.status');

  @override
  String get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$tokenAtom = Atom(name: '_AppStore.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$refreshTokenAtom = Atom(name: '_AppStore.refreshToken');

  @override
  String get refreshToken {
    _$refreshTokenAtom.context.enforceReadPolicy(_$refreshTokenAtom);
    _$refreshTokenAtom.reportObserved();
    return super.refreshToken;
  }

  @override
  set refreshToken(String value) {
    _$refreshTokenAtom.context.conditionallyRunInAction(() {
      super.refreshToken = value;
      _$refreshTokenAtom.reportChanged();
    }, _$refreshTokenAtom, name: '${_$refreshTokenAtom.name}_set');
  }
}