import 'package:clonemartapp/widget/page/home/widget/list_notification/widget/Notification_model.dart';
import 'package:flutter/material.dart';

class ListNotification extends StatelessWidget {
  const ListNotification({
    super.key,
    required this.notifications,
  });

  final List<NotificationItem> notifications;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 11,
          child: ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Row(
                  children: [
                    // Image.asset(notifications[index].assetGenImage),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(notifications[index].title),
                        Text(notifications[index].description),
                      ],
                    ),
                  ],
                ),
                onTap: () {},
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
              );
            },
          ),
        ),
      ],
    );
  }
}
