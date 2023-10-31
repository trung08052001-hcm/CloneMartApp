import 'package:clonemartapp/widget/page/main/bloc/main_event.dart';
import 'package:clonemartapp/widget/page/main/bloc/main_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Bloc<PageChanged, MainState> {
  MainBloc() : super(MainState()) {
    on<PageChanged>(_pageChanged);
  }

  final PageController controller = PageController();

  @override
  Future<void> close() {
    controller.dispose();
    return super.close();
  }

  Future<void> _pageChanged(PageChanged event, Emitter<MainState> emit) async {
    final MainState newState = state.copyWith(activePage: event.page);

    controller.animateToPage(
      event.page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.linear,
    );

    emit(newState);
  }
}
