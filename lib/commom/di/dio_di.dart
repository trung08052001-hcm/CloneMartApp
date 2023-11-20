import 'package:clonemartapp/commom/config/dio_config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class DioDI {
  DioDI._();

  static Future<void> init(GetIt injector) async {
    injector.registerSingleton<DioConfig>(
      DioConfig(
          baseUrl:
              'https://422d-2001-ee0-4f0e-a700-c9d4-8288-3f3b-9bf3.ngrok.io'),
    );

    injector.registerLazySingleton<Dio>(() {
      final dioConfig = injector<DioConfig>();
      return Dio(BaseOptions(baseUrl: dioConfig.baseUrl));
    });
  }
}
