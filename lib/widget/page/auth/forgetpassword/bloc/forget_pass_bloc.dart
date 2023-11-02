import 'package:bloc/bloc.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:meta/meta.dart';

part 'forget_pass_event.dart';
part 'forget_pass_state.dart';

class ForgetPasswordBloc
    extends Bloc<ChangeForgetTypeEvent, ForgetPasswordInitial> {
  ForgetPasswordBloc() : super(ForgetPasswordInitial()) {
    on<ChangeForgetTypeEvent>(_changeAuthTypeEvent);
  }
  Future<void> _changeAuthTypeEvent(
      ChangeForgetTypeEvent event, Emitter<ForgetPasswordInitial> emit) async {
    emit(ForgetPasswordInitial(type: event.type));
  }
}
