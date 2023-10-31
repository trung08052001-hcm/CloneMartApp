import 'package:clonemartapp/domain/use_case/repository/auth_repository.dart';
import 'package:clonemartapp/domain/use_case/repository/auth_repository_impl.dart';
import 'package:get_it/get_it.dart';

class RepositoryDI {
  RepositoryDI._();
  static Future<void> init(GetIt injector) async {
    injector.registerFactory<AuthRepository>(
        () => AuthRepositoryImpl(injector(), injector()));
  }
}
