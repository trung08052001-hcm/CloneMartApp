import 'package:clonemartapp/commom/config/app_config.dart';
import 'package:clonemartapp/commom/config/network_config.dart';
import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/presentation/app/bloc/app_bloc.dart';
import 'package:clonemartapp/presentation/app/bloc/app_state.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await AppConfig().configApp(buildMode: BuildMode.dev);
  setUpStatusBar();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      create: (_) => getIt<AppBloc>(),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (BuildContext context, AppState state) => MaterialApp(
          title: 'Flutter Demo',
          // localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          //   // S.delegate,
          //   // GlobalMaterialLocalizations.delegate,
          //   // GlobalWidgetsLocalizations.delegate,
          //   // GlobalCupertinoLocalizations.delegate,
          // ],
          navigatorKey: getIt<NavigationService>().navigatorKey,
          // supportedLocales: S.delegate.supportedLocales,
          theme: state.theme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: AppRoute.getRoute,
          initialRoute: RouteConst.splash,
          builder: (BuildContext childContext, Widget? child) {
            getIt<SizeConfig>().setMq(childContext);
            return child ?? const SizedBox();
          },
        ),
      ),
    );
  }
}
