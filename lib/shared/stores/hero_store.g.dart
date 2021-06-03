// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hero_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HeroStore on _HeroStoreBase, Store {
  final _$cFiltroAtom = Atom(name: '_HeroStoreBase.cFiltro');

  @override
  List<SuperHero> get cFiltro {
    _$cFiltroAtom.reportRead();
    return super.cFiltro;
  }

  @override
  set cFiltro(List<SuperHero> value) {
    _$cFiltroAtom.reportWrite(value, super.cFiltro, () {
      super.cFiltro = value;
    });
  }

  final _$cItemsAtom = Atom(name: '_HeroStoreBase.cItems');

  @override
  List<SuperHero> get cItems {
    _$cItemsAtom.reportRead();
    return super.cItems;
  }

  @override
  set cItems(List<SuperHero> value) {
    _$cItemsAtom.reportWrite(value, super.cItems, () {
      super.cItems = value;
    });
  }

  final _$cHeroDetailAtom = Atom(name: '_HeroStoreBase.cHeroDetail');

  @override
  SuperHero? get cHeroDetail {
    _$cHeroDetailAtom.reportRead();
    return super.cHeroDetail;
  }

  @override
  set cHeroDetail(SuperHero? value) {
    _$cHeroDetailAtom.reportWrite(value, super.cHeroDetail, () {
      super.cHeroDetail = value;
    });
  }

  final _$cStateAtom = Atom(name: '_HeroStoreBase.cState');

  @override
  StateHero get cState {
    _$cStateAtom.reportRead();
    return super.cState;
  }

  @override
  set cState(StateHero value) {
    _$cStateAtom.reportWrite(value, super.cState, () {
      super.cState = value;
    });
  }

  final _$msgErrorAtom = Atom(name: '_HeroStoreBase.msgError');

  @override
  String get msgError {
    _$msgErrorAtom.reportRead();
    return super.msgError;
  }

  @override
  set msgError(String value) {
    _$msgErrorAtom.reportWrite(value, super.msgError, () {
      super.msgError = value;
    });
  }

  final _$getRandomHeroAsyncAction =
      AsyncAction('_HeroStoreBase.getRandomHero');

  @override
  Future<dynamic> getRandomHero() {
    return _$getRandomHeroAsyncAction.run(() => super.getRandomHero());
  }

  final _$getItemsAsyncAction = AsyncAction('_HeroStoreBase.getItems');

  @override
  Future<dynamic> getItems() {
    return _$getItemsAsyncAction.run(() => super.getItems());
  }

  final _$searchHeroAsyncAction = AsyncAction('_HeroStoreBase.searchHero');

  @override
  Future<dynamic> searchHero(String value) {
    return _$searchHeroAsyncAction.run(() => super.searchHero(value));
  }

  @override
  String toString() {
    return '''
cFiltro: ${cFiltro},
cItems: ${cItems},
cHeroDetail: ${cHeroDetail},
cState: ${cState},
msgError: ${msgError}
    ''';
  }
}
