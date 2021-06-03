import 'dart:math';

import 'package:mobx/mobx.dart';
import 'package:superhero_app/shared/models/superhero_model.dart';
import 'package:superhero_app/shared/repositories/data_repository.dart';
part 'hero_store.g.dart';

class HeroStore = _HeroStoreBase with _$HeroStore;

enum StateHero { initial, loading, loaded, error, empty, search }

abstract class _HeroStoreBase with Store {
  DataRepository fData = DataRepository();
  //Lista para Pegar um Hero Random
  List<SuperHero> cRandomList = [];
  //Lista Utilizada para filtrar usando a busca
  @observable
  List<SuperHero> cFiltro = [];
  //Lista principal de itens
  @observable
  List<SuperHero> cItems = [];

  @observable
  SuperHero? cHeroDetail;

  @observable
  StateHero cState = StateHero.initial;

  @observable
  String msgError = '';

  @action
  Future getRandomHero() async {
    final cRandom = new Random();
    int cMax = cRandomList.length;
    int id = (cRandom.nextInt(cMax));

    cHeroDetail = cRandomList[id];
  }

  @action
  Future getItems() async {
    try {
      cState = StateHero.loading;
      fData.getHeros().then((value) {
        if (value.isNotEmpty) {
          cItems = value;
          cFiltro = value;
          cRandomList = value;
          cState = StateHero.loaded;
        } else {
          cItems = [];
          cFiltro = [];
          cRandomList = [];
          cState = StateHero.empty;
        }
      });
    } catch (e) {
      cState = StateHero.error;
      msgError = e.toString();
      cItems = [];
      cFiltro = [];
      cRandomList = [];
    }
  }

  @action
  Future searchHero(String value) async {
    cItems = cFiltro
        .where((element) =>
            element.name.toUpperCase().contains(value.toUpperCase()) ||
            element.appearance.gender
                .toUpperCase()
                .contains(value.toUpperCase()))
        .toList();
  }
}
