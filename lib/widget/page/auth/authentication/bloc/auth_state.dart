part of 'auth_bloc.dart';

class AuthLoaded {
  AuthLoaded({
    this.type = AuthType.login,
  });
  final AuthType type;
}
