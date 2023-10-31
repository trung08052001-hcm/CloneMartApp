import 'package:clonemartapp/domain/use_case/entities/auth_entities.dart';
import 'package:clonemartapp/domain/use_case/entities/data_state.dart';
import 'package:clonemartapp/domain/use_case/entities/user_info_entity.dart';
import 'package:clonemartapp/domain/use_case/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl(Object object, Object object2);

  @override
  Future<UserInfoEntity> getUserInfo() {
    // TODO: implement getUserInfo
    throw UnimplementedError();
  }

  @override
  Future<DataState<AuthEntity>> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }
  // AuthRepositoryImpl(this._authRemoteDataSource, this._authLocalDataSource);

  // final AuthRemoteDataSource _authRemoteDataSource;
  // final AuthLocalDataSource _authLocalDataSource;
  // @override
  // Future<DataState<AuthEntity>> login(String email, String password) async {
  //   final DataState<AuthEntity> response =
  //       await _authRemoteDataSource.login(email, password);
  //   return response;
  // }

  // @override
  // Future<UserInfoEntity> getUserInfo() async {
  //   final UserInfoEntity entity = await _authLocalDataSource.getUserInfo();
  //   return entity;
  // }
}
