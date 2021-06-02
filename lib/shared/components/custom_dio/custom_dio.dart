import 'package:dio/native_imp.dart';
import 'package:superhero_app/core/core.dart';
import 'package:superhero_app/shared/components/custom_dio/inteceptors.dart';

class CustomDio extends DioForNative {
  CustomDio() {
    options.baseUrl = AppConsts.heroAPIURL;
    interceptors.add(CustomInterceptors());
  }
}
