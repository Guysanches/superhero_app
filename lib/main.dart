import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/shared/components/custom_dio/custom_dio.dart';
import 'core/app_widget.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<CustomDio>(CustomDio());
  runApp(AppWidget());
}
