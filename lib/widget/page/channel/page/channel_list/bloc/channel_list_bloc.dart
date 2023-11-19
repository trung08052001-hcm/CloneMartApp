import 'package:bloc/bloc.dart';
import 'package:clonemartapp/data/channel_model/channel_model.dart';
import 'package:meta/meta.dart';

part 'channel_list_event.dart';
part 'channel_list_state.dart';

class ChannelListBloc extends Bloc<ChannelListEvent, ChannelListState> {
  ChannelListBloc() : super(ChannelListInitial()) {
    on<ChannelListEvent>((event, emit) {});
  }
}
