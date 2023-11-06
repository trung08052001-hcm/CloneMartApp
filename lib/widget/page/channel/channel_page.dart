import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/channel/bloc/channel_bloc.dart';
import 'package:clonemartapp/widget/page/channel/page/channel_list/channel_list_page.dart';
import 'package:clonemartapp/widget/page/channel/widget/active_iphone_list.dart';
import 'package:clonemartapp/widget/page/section/see_all_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<ChannelBloc>();
    final MediaQueryData mediaQueryData = getIt<SizeConfig>().mediaQuerySize;
    return BlocBuilder<ChannelBloc, ChannelState>(
      bloc: bloc,
      builder: (BuildContext context, ChannelState state) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          controller: bloc.scrollController,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    isViewAll: false,
                    title: 'S().activeNow',
                    child: const ListActiveDoctor()),
                SizedBox(
                  height: 20.h,
                ),
                // SeeAllSection(
                //     onTap: () {},
                //     isViewAll: false,
                //     title: 'S().messages',
                //     child: ChannelListPage(
                //       bloc: bloc,
                //     )),
              ]),
        );
      },
    );
  }
}
