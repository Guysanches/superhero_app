import '../components/custom_dio/custom_dio.dart';
import 'package:flutter/material.dart';

class Repository {
  final CustomDio cConexao;

  Repository({required this.cConexao});
  
  Future<List<SuperHero>> getHero() async{
    try{
      var response = await cConexao.get("/all");
      return (response.data as list).map((item) => SuperHero.fromJson(item)).toList();
    } on DioError catch (e){
      throw(e.message)
    }
  }
}
