import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:get_it/get_it.dart';


import 'app_injector.dart';

class SizeDI {
  SizeDI._();

  static Future<void> init(GetIt injector) async {
    getIt.registerSingleton<SizeConfig>(SizeConfig());
  }
}
