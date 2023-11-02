import 'package:bloc/bloc.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_event.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/auth_enum.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<ChangeAuthTypeEvent, AuthLoaded> {
  AuthBloc() : super(AuthLoaded()) {
    on<ChangeAuthTypeEvent>(_changeAuthTypeEvent);
  }
  Future<void> _changeAuthTypeEvent(
      ChangeAuthTypeEvent event, Emitter<AuthLoaded> emit) async {
    emit(AuthLoaded(type: event.type));
  }
}
