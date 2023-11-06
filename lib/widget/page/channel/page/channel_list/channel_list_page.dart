import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/data/channel_model/channel_model.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/dimension_constant.dart';
import 'package:clonemartapp/widget/page/channel/page/channel_list/bloc/channel_list_bloc.dart';
import 'package:clonemartapp/widget/page/channel/page/channel_list/widget/channel_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../res/color_core.dart';

class ChannelListPage extends StatelessWidget {
  final ChannelModel item;
  ChannelListPage({required this.item});
  @override
  Widget build(BuildContext context) {
    final bloc = getIt<ChannelListBloc>();
    return BlocBuilder<ChannelListBloc, ChannelListState>(
      bloc: bloc,
      builder: (BuildContext context, ChannelListState state) {
        return Padding(
          padding: EdgeInsets.only(bottom: 15.h),
          child: ChanneListlItem(
            item: item,
          ),
        );
      },
    );
  }
}
