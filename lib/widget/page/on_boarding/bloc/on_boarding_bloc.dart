import 'package:clonemartapp/data/navigate_remove/navi_and_remove.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_event.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'dart:async';

class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingLoaded> {
  OnBoardingBloc() : super(OnBoardingLoaded()) {
    on<ChangePageEvent>(_changePageEvent);
    on<StartLoginEvent>(_startLoginEvent);
  }

  final PageController controller = PageController();

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }

  Future<void> _changePageEvent(
      ChangePageEvent event, Emitter<OnBoardingLoaded> emit) async {
    if (event.index >= 3) {
      _emitNavigateLoginPage(emit);
      return;
    }

    controller.animateToPage(
      event.index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
    emit(OnBoardingLoaded(currentIndex: event.index));
  }

  Future<void> _startLoginEvent(
      StartLoginEvent event, Emitter<OnBoardingLoaded> emit) async {
    _emitNavigateLoginPage(emit);
  }

  void _emitNavigateLoginPage(Emitter<OnBoardingLoaded> emit) {
    emit(NavigateAndRemoveState(
      routeName: RouteConst.main,
      predicate: (Route<dynamic> route) =>
          route.settings.name == RouteConst.onBoarding,
    ) as OnBoardingLoaded);
  }
}
