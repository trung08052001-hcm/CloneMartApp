import 'package:clonemartapp/commom/di/app_injector.dart';
import 'package:clonemartapp/gen/assets.gen.dart';
import 'package:clonemartapp/res/color_core.dart';
import 'package:clonemartapp/widget/app_bar.dart/default_app_bar.dart';
import 'package:clonemartapp/widget/appscaffold/app_scaffold.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/bloc/notification_bloc.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/widget/Notification_model.dart';
import 'package:clonemartapp/widget/page/home/widget/list_notification/widget/list_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationPage extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 1',
      description: 'Nội dung thông báo 1',
      assetGenImage: Assets.images.chatbot,
    ),
    NotificationItem(
      title: 'Thông báo 2',
      description: 'Nội dung thông báo 2',
      assetGenImage: Assets.images.chatbot,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<NotificationBloc>();
    return AppScaffold(
      appbar: DefaultAppbar(
        color: kWhiteColor,
        title: 'S().notification',
        elevation: 1,
      ),
      isPaddingDefault: true,
      body: BlocBuilder<NotificationBloc, NotificationState>(
        bloc: bloc,
        builder: (BuildContext context, NotificationState state) {
          return ListNotification(notifications: notifications);
        },
      ),
    );
  }
}
