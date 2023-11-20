import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/category/bloc/category_bloc.dart';
import 'package:clonemartapp/widget/page/category/widget/available_phone.dart';
import 'package:clonemartapp/widget/page/category/widget/top_rate_phone/top_rate_phone.dart';
import 'package:clonemartapp/widget/page/section/see_all_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<CategoryBloc>();
    final MediaQueryData mediaQueryData = getIt<SizeConfig>().mediaQuerySize;
    return AppScaffold(
      isPaddingDefault: true,
      body: BlocBuilder<CategoryBloc, CategoryState>(
        bloc: bloc,
        builder: (BuildContext context, CategoryState state) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: mediaQueryData.padding.top + kDefaultPaddingVertical,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
                    child: AvailablePhone(),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SeeAllSection(
                  title: 'S().top_phone',
                  child: const TopRatePhone(),
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
