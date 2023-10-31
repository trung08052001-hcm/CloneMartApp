import 'package:clonemartapp/commom/config/logger_config.dart';
import 'package:clonemartapp/commom/config/network_config.dart';
import 'package:get_it/get_it.dart';

import 'app_injector.dart';

class LoggerDI {
  LoggerDI._();

  static Future<void> init(GetIt injector,
      {required BuildMode buildMode}) async {
    getIt.registerLazySingleton<LoggerConfig>(LoggerConfig.new);
  }
}
