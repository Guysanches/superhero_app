import 'package:mobx/mobx.dart';
import 'package:superhero_app/shared/models/superhero_model.dart';
import 'package:superhero_app/shared/repositories/data_repository.dart';
part 'hero_store.g.dart';

class HeroStore = _HeroStoreBase with _$HeroStore;

enum StateHero { initial, loading, loaded, error, empty, search }

abstract class _HeroStoreBase with Store {
  DataRepository fData = DataRepository();

  @observable
  List<SuperHero> cFiltro = [];

  @observable
  List<SuperHero> cItems = [];

  @observable
  StateHero cState = StateHero.initial;

  @observable
  String msgError = '';

  @action
  Future getItems() async {
    try {
      cState = StateHero.loading;
      fData.getHeros().then((value) {
        if (value.isNotEmpty) {
          cItems = value;
          cFiltro = value;
          cState = StateHero.loaded;
        } else {
          cItems = [];
          cState = StateHero.empty;
          cFiltro = [];
        }
      });
    } catch (e) {
      cState = StateHero.error;
      msgError = e.toString();
      cItems = [];
      cFiltro = [];
    }
  }

  @action
  Future searchHero(String value) async {
    cItems = cFiltro
        .where((element) =>
            element.name.toUpperCase().contains(value.toUpperCase()))
        .toList();
  }
}
