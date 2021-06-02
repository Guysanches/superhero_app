import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:superhero_app/shared/components/custom_dio/custom_dio.dart';

import 'package:superhero_app/shared/stores/hero_store.dart';
import 'core/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<CustomDio>(CustomDio());
  getIt.registerSingleton<HeroStore>(HeroStore());
  runApp(AppWidget());
}
