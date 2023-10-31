import 'package:clonemartapp/domain/use_case/entities/auth_entities.dart';
import 'package:clonemartapp/domain/use_case/entities/data_state.dart';
import 'package:clonemartapp/domain/use_case/entities/user_info_entity.dart';
import 'package:clonemartapp/domain/use_case/repository/auth_repository.dart';

class AuthUseCase {
  AuthUseCase(this._authRepository);

  final AuthRepository _authRepository;

  Future<DataState<AuthEntity>> login(
      {required String email, required String password}) async {
    final DataState<AuthEntity> entity =
        await _authRepository.login(email, password);
    return entity;
  }

  Future<UserInfoEntity> getUserInfo() async {
    final UserInfoEntity entity = await _authRepository.getUserInfo();
    return entity;
  }
}
