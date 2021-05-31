import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:superhero_app/core/core.dart';
import 'package:superhero_app/shared/components/custom_dio/inteceptors.dart';

class CustomDio extends DioForNative {
  BaseOptions cOptions = new BaseOptions(baseUrl: AppConsts.heroAPIURL);

  CustomDio([BaseOptions? cOptions]) : super(cOptions) {
    options.baseUrl = cOptions!.baseUrl;
    options.connectTimeout = 5000;
    interceptors.add(CustomInterceptors());
  }
}
