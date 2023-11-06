import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'channel_event.dart';
part 'channel_state.dart';

class ChannelBloc extends Bloc<ChannelEvent, ChannelState> {
  final ScrollController scrollController = ScrollController();

  ChannelBloc() : super(ChannelInitial()) {
    on<ChannelEvent>((event, emit) {
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
