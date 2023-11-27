import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/auth/authentication/widget/section_information.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/bloc/payment_method_bloc.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/widget/payment_checkbot.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/widget/payment_cvv.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/widget/payment_total.dart';
import 'package:clonemartapp/widget/page/profile/page/payment_method/widget/payment_type.dart';
import 'package:clonemartapp/widget/textfield/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodPage extends StatelessWidget {
  PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<PaymentMethodBloc>();

    return BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
      bloc: bloc,
      builder: (BuildContext context, PaymentMethodState state) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.h),
              InfoSection(title: 'S().choose_payment', child: PaymentType()),
              SizedBox(
                height: 20.h,
              ),
              InfoSection(
                title: 'S().card_number',
                child: AppTextField(
                  borderRadius: 10.r,
                  filledColor: kGhostWhiteColor,
                  hintText: '1234   5678   8765',
                  isPhone: true,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InfoSection(
                title: 'S().cash_header_name',
                child: AppTextField(
                  borderRadius: 10.r,
                  filledColor: kGhostWhiteColor,
                  hintText: 'eraj ali',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const PaymentCvv(),
              SizedBox(
                height: 20.h,
              ),
              const PaymentCheckBox(),
              SizedBox(
                height: 20.h,
              ),
              const PaymentTotal(),
              SizedBox(
                height: 50.h,
              ),
              AppButton(
                onTap: () {},
                height: 50.h,
                width: screenWidth - kDefaultPadding * 2,
                backGroundColor: kBlueColor,
                textColor: kWhiteColor,
                title: 'S().pay_now',
                style: fontApp.copyWith(
                    fontSize: 12, color: textWhiteColor, fontWeight: bold),
                borderRadius: 30.r,
              ),
            ],
          ),
        );
      },
    );
  }
}
