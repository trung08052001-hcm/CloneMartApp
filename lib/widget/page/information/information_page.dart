import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/category/widget/available_phone.dart';
import 'package:clonemartapp/widget/page/information/bloc/information_new_bloc.dart';
import 'package:clonemartapp/widget/page/information/widget/available_information.dart';
import 'package:clonemartapp/widget/page/section/see_all_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Information_Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<InformationNewBloc>();
    final MediaQueryData mediaQueryData = getIt<SizeConfig>().mediaQuerySize;
    return AppScaffold(
      body: BlocBuilder<InformationNewBloc, InformationNewState>(
        bloc: bloc,
        builder: (BuildContext context, InformationNewState state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: mediaQueryData.padding.top + kDefaultPaddingVertical,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: SearchBar(),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SeeAllSection(
                  onTap: () {},
                  title: 'S().avai_phone',
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: AvailableInfor(),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
