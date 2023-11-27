import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/widget/app_routes.dart';

enum ProfileType { history, personal, address, payment, about, help, logout }

extension ProfileTypeEx on ProfileType {
  String get navigateKey {
    switch (this) {
      case ProfileType.history:
        return RouteConst.history;
      case ProfileType.personal:
        return RouteConst.account;
      case ProfileType.address:
        return RouteConst.address;
      case ProfileType.payment:
        return RouteConst.payment;
      case ProfileType.about:
        return RouteConst.main;
      case ProfileType.help:
        return RouteConst.main;
      case ProfileType.logout:
        return RouteConst.auth;
    }
  }

  String get title {
    switch (this) {
      case ProfileType.history:
        return 'S().history';
      case ProfileType.personal:
        return 'S().personal_details';
      case ProfileType.address:
        return 'S().address';
      case ProfileType.payment:
        return 'S().payment_method';
      case ProfileType.about:
        return 'S().about';
      case ProfileType.help:
        return 'S().help';
      case ProfileType.logout:
        return 'S().logout';
    }
  }

  SvgGenImage get svgGenImage {
    switch (this) {
      case ProfileType.history:
        return Assets.icons.iconHistory;
      case ProfileType.personal:
        return Assets.icons.iconAccount;
      case ProfileType.address:
        return Assets.icons.iconMark;
      case ProfileType.payment:
        return Assets.icons.iconCard;
      case ProfileType.about:
        return Assets.icons.iconExclamation;
      case ProfileType.help:
        return Assets.icons.iconSupport;
      case ProfileType.logout:
        return Assets.icons.iconLogout;
    }
  }
}
