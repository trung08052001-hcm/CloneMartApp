import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/authentication/bloc/auth_bloc.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/auth_enum.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/auth_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<AuthBloc>();

    return AppScaffold(
      isPaddingDefault: true,
      body: Column(
        children: <Widget>[
          Expanded(
            child: BlocBuilder<AuthBloc, AuthLoaded>(
              bloc: bloc,
              builder: (BuildContext context, AuthLoaded state) {
                final bool isLogin = state.type == AuthType.login;
                return AuthView(
                  isLogin: isLogin,
                  bloc: bloc,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
