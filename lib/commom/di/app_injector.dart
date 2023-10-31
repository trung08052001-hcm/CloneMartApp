import 'package:clonemartapp/commom/config/network_config.dart';
import 'package:clonemartapp/commom/di/api_di.dart';
import 'package:clonemartapp/commom/di/bloc_di.dart';
import 'package:clonemartapp/commom/di/database_di.dart';
import 'package:clonemartapp/commom/di/logger_di.dart';
import 'package:clonemartapp/commom/di/model_di.dart';
import 'package:clonemartapp/commom/di/page_di.dart';
import 'package:clonemartapp/commom/di/repository_di.dart';
import 'package:clonemartapp/commom/di/server_di.dart';
import 'package:clonemartapp/commom/di/share_pref_di.dart';
import 'package:clonemartapp/commom/di/size_di.dart';
import 'package:clonemartapp/commom/di/use_case_di.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

class AppInjector {
  AppInjector._();

  static final GetIt injector = GetIt.instance;

  static Future<void> initializeDependencies(BuildMode buildMode) async {
    await SizeDI.init(injector);
    await SharedPrefDI.init(injector);
    await LoggerDI.init(injector, buildMode: buildMode);
    await DatabaseDI.init(injector);
    await ApiDI.init(injector);
    await ServiceDI.init(injector);
    await ModelDI.init(injector);
    // await LocalDataSourceDI.init(injector);
    // await RemoteDataSourceDI.init(injector);
    await RepositoryDI.init(injector);
    await UseCaseDI.init(injector);
    await BlocDI.init(injector);
    await PageDI.init(injector);
  }
}
