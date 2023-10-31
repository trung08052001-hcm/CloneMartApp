import 'package:clonemartapp/domain/use_case/entities/auth_entities.dart';
import 'package:clonemartapp/domain/use_case/entities/data_state.dart';
import 'package:clonemartapp/domain/use_case/entities/user_info_entity.dart';

abstract class AuthRepository {
  Future<DataState<AuthEntity>> login(String email, String password);
  Future<UserInfoEntity> getUserInfo();
}
