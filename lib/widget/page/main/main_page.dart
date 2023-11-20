import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';

import 'package:clonemartapp/widget/keep_alive_wraper.dart';
import 'package:clonemartapp/widget/page/category/category_page.dart';
import 'package:clonemartapp/widget/page/channel/channel_page.dart';
import 'package:clonemartapp/widget/page/home/home_page.dart';
import 'package:clonemartapp/widget/page/information/information_page.dart';
import 'package:clonemartapp/widget/page/main/bloc/main_bloc.dart';
import 'package:clonemartapp/widget/page/main/bloc/main_event.dart';
import 'package:clonemartapp/widget/page/main/bloc/main_state.dart';
import 'package:clonemartapp/widget/page/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainBloc bloc = getIt<MainBloc>();

  final List<SvgPicture> bottomIcon = <SvgPicture>[
    SvgPicture.asset('assets/icons/home.svg'), // Sử dụng SvgPicture.asset
    SvgPicture.asset('assets/icons/category.svg'),
    SvgPicture.asset('assets/icons/time.svg'),
    SvgPicture.asset('assets/icons/message.svg'),
    SvgPicture.asset('assets/icons/user.svg'),
  ];

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: bloc.controller,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          ...<Widget>[
            const HomePage(),
            CategoryPage(),
            Information_Page(),
            ChannelPage(),
            ProfilePage(),
          ].map((Widget e) => KeepAliveWrapper(child: e)),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(boxShadow: <BoxShadow>[
          BoxShadow(color: kWhiteColor, blurRadius: 1)
        ]),
        child: BlocBuilder<MainBloc, MainState>(
          bloc: bloc,
          builder: (_, MainState state) {
            if (state is MainState) {
              return NavigationBarTheme(
                data: NavigationBarThemeData(
                  indicatorColor: kBlueColor,
                  elevation: 5,
                  indicatorShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
                child: NavigationBar(
                  selectedIndex: state.activePage,
                  onDestinationSelected: (int index) {
                    bloc.add(PageChanged(page: index));
                  },
                  destinations: buildListBottomNavigationBar(),
                  backgroundColor: kWhiteColor,
                  labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                  height: 65.h,
                  elevation: 1,
                ),
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  List<Widget> buildListBottomNavigationBar() {
    return bottomIcon.asMap().entries.map((entry) {
      final index = entry.key;
      final imageProvider = entry.value;
      return buildItemBottonIcon(index, imageProvider);
    }).toList();
  }

  NavigationDestination buildItemBottonIcon(int index, SvgPicture svgPicture) {
    return NavigationDestination(
      selectedIcon: svgPicture,
      icon: svgPicture,
      label: '',
    );
  }
}
