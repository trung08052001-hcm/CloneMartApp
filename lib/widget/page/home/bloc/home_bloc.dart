import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ScrollController scrollController = ScrollController();

  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // Xử lý sự kiện của ChannelBloc ở đây
    });

    // Thêm listener cho scrollController
    scrollController.addListener(scrollListener);
  }

  void scrollListener() {
    // Xử lý sự kiện khi scrollController thay đổi
  }

  @override
  Future<void> close() async {
    // Hủy bỏ listener khi đóng Bloc
    scrollController.dispose();
    await super.close();
  }
}
