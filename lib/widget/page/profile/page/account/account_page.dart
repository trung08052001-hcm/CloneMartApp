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
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});
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
    final bloc = getIt<AccountBloc>();

    return BlocBuilder<AccountBloc, AccountState>(
      bloc: bloc,
      builder: (BuildContext context, AccountState state) {
        return AppScaffold(
            isPaddingDefault: true,
            paddingCustom:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            appbar: const DefaultAppbar(
              title: 'Account info',
              hasLeading: true,
              elevation: 1,
              color: kWhiteColor,
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const AccountImage(),
                  SizedBox(
                    height: 20.h,
                  ),
                  InfoSection(
                    title: 'S().name',
                    isEditable: true,
                    child: AppTextField(
                      borderRadius: 10.r,
                      filledColor: kGhostWhiteColor,
                      hintText: 'Nhi Bí',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InfoSection(
                    title: 'S().email',
                    isEditable: true,
                    child: AppTextField(
                      borderRadius: 10.r,
                      filledColor: kGhostWhiteColor,
                      controller: textFieldControllers[emailField],
                      hintText: 'eraj.ali4567890@gmail.com',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InfoSection(
                    title: 'S().phone',
                    isEditable: true,
                    child: AppTextField(
                      borderRadius: 10.r,
                      filledColor: kGhostWhiteColor,
                      hintText: '(+84)908 765 4321 ',
                      isPhone: true,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InfoSection(
                    title: 'S().location',
                    isEditable: true,
                    child: AppTextField(
                      borderRadius: 10.r,
                      filledColor: kGhostWhiteColor,
                      hintText: 'Hồ Chí Minh City',
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InfoSection(
                    title: 'S().gender',
                    isEditable: true,
                    child: AppTextField(
                      borderRadius: 10.r,
                      filledColor: kGhostWhiteColor,
                      hintText: 'Female',
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  AppButton(
                    onTap: () {},
                    height: 60.h,
                    width: screenWidth - kDefaultPadding * 2,
                    backGroundColor: kBlueColor,
                    textColor: kWhiteColor,
                    title: 'S().save_changes',
                    style: fontApp.copyWith(
                        fontSize: 14, color: textWhiteColor, fontWeight: bold),
                    borderRadius: 30.r,
                  ),
                ],
              ),
            ));
      },
    );
  }
}
