import 'package:clonemartapp/commom/config/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DioDI {
  DioDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerSingleton<DioConfig>(
      DioConfig(
          baseUrl:
              'https://37dd-2001-ee0-4f0e-a700-353a-38a-3151-d975.ngrok.io'),
    );

    injector.registerLazySingleton<Dio>(() {
      final dioConfig = injector<DioConfig>();
      return Dio(BaseOptions(baseUrl: dioConfig.baseUrl));
    });
  }
}
