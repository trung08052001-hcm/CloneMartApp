import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'information_new_event.dart';
part 'information_new_state.dart';

class InformationNewBloc extends Bloc<InformationNewEvent, InformationNewState> {
  InformationNewBloc() : super(InformationNewInitial()) {
    on<InformationNewEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
