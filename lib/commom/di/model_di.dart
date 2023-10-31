import 'package:clonemartapp/presentation/app_user.dart';
import 'package:get_it/get_it.dart';

class ModelDI {
  ModelDI._();
  static Future<void> init(GetIt injector) async {
    injector.registerLazySingleton(AppUser.new);
  }
}
