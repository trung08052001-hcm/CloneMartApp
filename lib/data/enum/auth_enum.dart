import 'package:clonemartapp/gen/assets.gen.dart';

enum AuthType { login, signUp }

enum ForgetType { phone, email }

enum Login3rdType {
  facebook,
  google,
}

extension Login3rdTypeEx on Login3rdType {
  String get key {
    switch (this) {
      case Login3rdType.facebook:
        return 'facebook';
      case Login3rdType.google:
        return 'google';
    }
  }

  SvgGenImage get svgGenImage {
    switch (this) {
      case Login3rdType.facebook:
        return Assets.icons.iconFacebook;
      case Login3rdType.google:
        return Assets.icons.iconGoogle;
    }
  }
}
