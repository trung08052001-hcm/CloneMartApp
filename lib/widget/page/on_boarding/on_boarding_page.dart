import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/onboarding_detail/boarding_detail.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/services/navigation_service.dart';
import 'package:clonemartapp/widget/app_routes.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/button/app_button.dart';
import 'package:clonemartapp/widget/page/button/text_button.dart';
import 'package:clonemartapp/widget/page/container/dot.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_event.dart';
import 'package:clonemartapp/widget/page/on_boarding/bloc/on_boarding_state.dart';
import 'package:clonemartapp/widget/page/on_boarding/widget/boarding_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBoardingPage extends StatelessWidget {
  final List<OnBoardingDetail> onBoardingList = <OnBoardingDetail>[
    OnBoardingDetail(
        title: 'Take prescription from\na doctor',
        content: 'lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Aliquam mi eu, aliquam in porta vel ac sit',
        assetGenImage: Assets.images.mobilePhonePng),
    OnBoardingDetail(
        title: '24 hour service for\npatients',
        content: 'lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Aliquam mi eu, aliquam in porta vel ac sit',
        assetGenImage: Assets.images.iconError),
    OnBoardingDetail(
        title: 'Best online doctor appointment app',
        content: 'lorem ipsum dolor sit amet, consectetur adipiscing elit. '
            'Aliquam mi eu, aliquam in porta vel ac sit',
        assetGenImage: Assets.images.chatbot),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<OnBoardingBloc>();

    return AppScaffold(
      isPaddingDefault: true,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: screenHeight * 3 / 5,
            child: PageView(
              controller: bloc.controller,
              children: <Widget>[
                ...onBoardingList.map((OnBoardingDetail e) => BoardingSection(
                      onBoardingDetail: e,
                    )),
              ],
              onPageChanged: (int value) {
                bloc.add(ChangePageEvent(index: value));
              },
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          BlocBuilder<OnBoardingBloc, OnBoardingLoaded>(
            bloc: bloc,
            builder: (BuildContext context, OnBoardingLoaded state) {
              return Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ...<int>[0, 1, 2].map((int e) => Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: DotItem(
                              size: 10.0.w,
                              color: e == state.currentIndex
                                  ? kGhostWhiteColor
                                  : kBlueColor,
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  AppButton.primary(
                    onTap: () {
                      bloc.add(ChangePageEvent(index: state.currentIndex + 1));
                    },
                    title: "Next",
                    borderRadius: 20.0,
                    height: 50.0,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  if (state.currentIndex != 3)
                    TextButtonApp(
                      title: "S().Start",
                      fontSize: 14,
                      colorText: kGreyColor,
                      onTap: () {
                        bloc.add(StartLoginEvent());
                        getIt<NavigationService>().navigateTo(RouteConst.auth);
                      },
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
