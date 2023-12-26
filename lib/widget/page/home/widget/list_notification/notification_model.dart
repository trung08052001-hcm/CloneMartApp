import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/res/dimens.dart';
import 'package:clonemartapp/res/themes/text_theme.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/bloc/notification_bloc.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/widget/custom_notifi_follow.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/widget/custom_notifi_like.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({super.key});
  List<String> newItem = ["liked", "follow"];
  List<String> todayItem = ["follow", "liked", "liked"];
  List<String> newItoldesItem = ["follow"];

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<NotificationBloc>();
    return AppScaffold(
      appbar: const DefaultAppbar(
        color: kWhiteColor,
        title: 'S().notification',
        elevation: 1,
      ),
      isPaddingDefault: true,
      body: BlocBuilder<NotificationBloc, NotificationState>(
        bloc: bloc,
        builder: (BuildContext context, NotificationState state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNotificationList(context, "New", newItem),
              buildNotificationList(context, "Today", todayItem),
              buildNotificationList(context, "Oldest", newItoldesItem),
            ],
          );
        },
      ),
    );
  }

  Widget buildNotificationList(
      BuildContext context, String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: textBlackColor,
                  fontSize: 14,
                ),
          ),
        ),
        SizedBox(height: 5.h),
        buildListViewBuilder(context, items),
        SizedBox(height: 10.h),
      ],
    );
  }

  Widget buildListViewBuilder(BuildContext context, List<String> items) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return items[index] == "follow"
            ? CustomNotificationFollow()
            : CustomLikeNotification();
      },
    );
  }
}
