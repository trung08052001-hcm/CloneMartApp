import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/home/bloc/home_bloc.dart';
import 'package:clonemartapp/widget/page/home/widget/appbar_home_page.dart';
import 'package:clonemartapp/widget/page/home/widget/caterogy_list.dart';
import 'package:clonemartapp/widget/page/home/widget/list_phone.dart';
import 'package:clonemartapp/widget/page/home/widget/list_view_iphone.dart';
import 'package:clonemartapp/widget/page/section/see_all_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<HomeBloc>();
    final NavigationService navigationService = getIt<NavigationService>();
    return AppScaffold(
      isPaddingDefault: true,
      body: Column(
        children: <Widget>[
          Expanded(
            child: BlocBuilder<HomeBloc, HomeState>(
              bloc: bloc,
              builder: (BuildContext context, HomeState state) {
                return Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: kDefaultPadding,
                          right: kDefaultPadding,
                          top: 50.h,
                          bottom: 10.h),
                      child: AppBarHomePage(
                        onTap: () {
                          navigationService.navigateTo(RouteConst.notification);
                        },
                      ),
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      controller: bloc.scrollController,
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: kDefaultPadding, vertical: 10.h),
                            child: SearchBar(onTap: () {
                              // navigationService.navigateTo(RouteConst.search);
                            }),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          const ListViewPhone(),
                          SizedBox(height: 15.h),
                          SeeAllSection(
                            onTap: () {},
                            title: 'S().categories',
                            child: CategoryList(),
                          ),
                          SizedBox(height: 15.h),
                          // SizedBox(height: 500, child: List_Phone()),
                          SeeAllSection(
                              onTap: () {
                                // navigationService
                                //     .navigateTo(RouteConst.doctorList);
                              },
                              title: 'S().list_of_phone',
                              child: List_Phone()),
                        ],
                      ),
                    )),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
