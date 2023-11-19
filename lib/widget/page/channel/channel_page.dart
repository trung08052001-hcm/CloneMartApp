import 'package:clonemartapp/commom/config/size_config.dart';
import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/channel/bloc/channel_bloc.dart';
import 'package:clonemartapp/widget/page/channel/page/channel_list/channel_list_page.dart';
import 'package:clonemartapp/widget/page/channel/widget/active_iphone_list.dart';
import 'package:clonemartapp/widget/page/channel/widget/chatbot_ai.dart';
import 'package:clonemartapp/widget/page/section/see_all_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<ChannelBloc>();
    return BlocBuilder<ChannelBloc, ChannelState>(
      bloc: bloc,
      builder: (BuildContext context, ChannelState state) {
        return AppScaffold(
            isPaddingDefault: true,
            paddingCustom:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            appbar: const DefaultAppbar(
              title: "ChatBot Care",
              hasLeading: false,
              elevation: 1,
              color: kWhiteColor,
            ),
            body: ChatScreen());
      },
    );
  }
}
