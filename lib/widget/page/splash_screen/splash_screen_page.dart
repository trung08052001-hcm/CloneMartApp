import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_bloc.dart';
import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_event.dart';
import 'package:clonemartapp/widget/page/splash_screen/bloc/splash_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  final SplashScreenBloc bloc = getIt<SplashScreenBloc>();
  bool hasNavigatedToMain = false;
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      navigateToMain();
    });
  }

  void navigateToMain() {
    if (!hasNavigatedToMain) {
      getIt<NavigationService>().navigateTo(RouteConst.main);
      hasNavigatedToMain = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<SplashScreenBloc, SplashScreenState>(
        bloc: bloc,
        builder: (BuildContext context, state) {
          if (state is SplashScreenFinished) {
            navigateToMain();
          }
          return Scaffold(
            body: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    size: 80,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Flutter Tip",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
