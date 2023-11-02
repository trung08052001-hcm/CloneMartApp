import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/enum/auth_enum.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/bloc/forget_pass_bloc.dart';
import 'package:clonemartapp/widget/page/auth/forgetpassword/widget/forget_pass_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({super.key});
  final bloc = getIt<ForgetPasswordBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgetPasswordBloc, ForgetPasswordInitial>(
      bloc: bloc,
      builder: (BuildContext context, ForgetPasswordInitial state) {
        if (state is ForgetPasswordInitial) {
          final bool isPhone = state.type == ForgetType.phone;
          return ForgetPassowdView(
            isPhone: isPhone,
            bloc: bloc,
          );
        }
        return const SizedBox();
      },
    );
  }
}
