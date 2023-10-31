import 'package:clonemartapp/domain/use_case/entities/base_entity_model.dart';

class AuthEntity extends BaseEntityModel {
  AuthEntity({required this.token});
  String token = '';
}
