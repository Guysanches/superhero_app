import 'package:dio/dio.dart';
import 'package:superhero_app/shared/models/superhero_model.dart';
import '../components/custom_dio/custom_dio.dart';

class DataRepository {
  var cConexao = CustomDio();

  Future<List<SuperHero>> getHeros() async {
    try {
      var response = await cConexao.get("/all.json");
      return (response.data as List)
          .map((item) => SuperHero.fromMap(item))
          .toList();
    } on DioError catch (e) {
      throw (e.message);
    }
  }
}
