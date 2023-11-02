import 'package:clonemartapp/data/enum/auth_enum.dart';

import 'package:flutter/foundation.dart';

class ChangeAuthTypeEvent {
  final AuthType type;
  ChangeAuthTypeEvent({
    required this.type,
  });
}
