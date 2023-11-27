import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/share/strings_constant.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/profile/page/account/bloc/account_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/account/widget/account_image.dart';
import 'package:clonemartapp/widget/page/profile/page/address/bloc/address_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/address/widget/address_listeview.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressPage extends StatelessWidget {
  AddressPage({super.key});
  final Map<String, TextEditingController> textFieldControllers =
      Map<String, TextEditingController>.fromEntries(
    <String>[
      emailField,
    ].map(
      (String value) => MapEntry<String, TextEditingController>(
        value,
        TextEditingController(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<AddressBloc>();

    return BlocBuilder<AddressBloc, AddressState>(
      bloc: bloc,
      builder: (BuildContext context, AddressState state) {
        return AppScaffold(
          isPaddingDefault: true,
          paddingCustom:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          appbar: const DefaultAppbar(
            title: 'Address',
            hasLeading: true,
            elevation: 1,
            color: kWhiteColor,
          ),
          body: Column(
            children: <Widget>[
              AppButton.secondary(
                onTap: () {},
                height: 60.h,
                title: 'S().add_address',
                style: fontApp.copyWith(
                    fontSize: 14, color: kBlueColor, fontWeight: bold),
                borderWidth: 1.w,
              ),
              SizedBox(
                height: 20.h,
              ),
              AddressListView(),
            ],
          ),
        );
      },
    );
  }
}
