import 'package:clonemartapp/services/navigation_service.dart';
import 'package:get_it/get_it.dart';

class ServiceDI {
  ServiceDI._();
  static Future<void> init(GetIt injector) async {
    injector..registerLazySingleton<NavigationService>(NavigationService.new);
  }
}
