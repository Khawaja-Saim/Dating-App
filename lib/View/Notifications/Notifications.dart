import 'package:datingapp/Utils/Widgets/Notification_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Model/Notification_Model.dart';
import '../../Utils/Widgets/CustomWidgets.dart';
import '../../const/Colors.dart';

class Notifications extends StatelessWidget {
  final List<NotificationModel> notifications = [
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-01 14:20')),
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-02 14:20')),
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-01 14:20:00')),
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-01 14:20:00')),
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-01 14:20:00')),
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-01 14:20:00')),
    NotificationModel(
        message: 'Ben like your picture',
        time: DateTime.parse('2024-03-01 14:20:00')),
    // Add more notifications with different dates
  ];

  Map<String, List<NotificationModel>> groupNotificationsByDate() {
    final Map<String, List<NotificationModel>> groupedNotifications = {};

    for (var notification in notifications) {
      final String dateKey = getDateKey(notification.time);

      if (!groupedNotifications.containsKey(dateKey)) {
        groupedNotifications[dateKey] = [];
      }

      groupedNotifications[dateKey]!.add(notification);
    }

    return groupedNotifications;
  }

  String getDateKey(DateTime date) {
    final DateTime now = DateTime.now();
    final DateTime yesterday = now.subtract(Duration(days: 1));

    if (date.year == now.year &&
        date.month == now.month &&
        date.day == now.day) {
      return 'Today';
    } else if (date.year == yesterday.year &&
        date.month == yesterday.month &&
        date.day == yesterday.day) {
      return 'Yesterday';
    } else {
      return '${date.year}-${date.month}-${date.day}';
    }
  }

  @override
  Widget build(BuildContext context) {
    final groupedNotifications = groupNotificationsByDate();

    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: backbutton2(context),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.16),
            child: Text(
              'Alarm',
              style: TextStyle(
                  color: ColorValues.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: groupedNotifications.length,
        itemBuilder: (context, index) {
          final dateKey = groupedNotifications.keys.toList()[index];
          final dateNotifications = groupedNotifications[dateKey]!;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                dateKey,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: ColorValues.grey),
              ),
              Column(
                children: dateNotifications
                    .map((notification) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child:
                              Notification_Widget(notification: notification),
                        ))
                    .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
