import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Model/Notification_Model.dart';
import '../../const/Colors.dart';

class Notification_Widget extends StatelessWidget {
  final NotificationModel notification;

  const Notification_Widget({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorValues.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 55.0,
                height: 60.0,
                child: Stack(
                  children: [
                    Container(
                      width: 60.0,
                      height: 52.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorValues.lightpink, // Circle color
                      ),
                      child: Center(
                        child: SvgPicture.asset('assets/noti2.svg', height: 30, width: 30),
                      ),
                    ),
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: ColorValues.pinkmain,
                        shape: BoxShape.circle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12),
              Text(
                notification.message,
                style: TextStyle(color: ColorValues.grey, fontSize: 15, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Text(
                notification.time.toString(),
                style: TextStyle(color: ColorValues.grey, fontSize: 12, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: ColorValues.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}