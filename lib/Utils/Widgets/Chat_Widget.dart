import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:flutter/material.dart';

import '../../Model/ChatModel.dart';
import '../../const/Colors.dart';

class Chat_Widget extends StatelessWidget {
  final ChatModel chat;

  Chat_Widget({required this.chat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 60,
                width: 60,
                child: Stack(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(chat.photo),
                              fit: BoxFit.cover)),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: 13,
                        width: 13,
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorValues.white),
                          color: ColorValues.pinkmain,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text(
                chat.name,
                style: TextStyle(
                    color: ColorValues.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 2),
              Text(
                chat.message,
                style: TextStyle(
                    color: ColorValues.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    chat.time,
                    style: TextStyle(
                        color: ColorValues.grey,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 3,),
                  if(chat.unreadCount!=0)
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: ColorValues.pinkmain,
                        shape: BoxShape.circle
                    ),
                    child: Center(
                      child: Text(
                        chat.unreadCount.toString(),
                        style: TextStyle(
                            color: ColorValues.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ChatBubble extends StatelessWidget {
  final bool isMe;
  final String message;
  final String time;

  ChatBubble({
    required this.isMe,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  if(!isMe)
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: CircularImage('assets/model1.png', 40, 40),
                    ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: ColorValues.white,
                      borderRadius:isMe?   BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomLeft: Radius.circular(15),) : BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),bottomRight: Radius.circular(15),),
                    ),
                    child: Text(
                      message,
                      style: TextStyle(
                        color: ColorValues.grey,
                        fontSize: 14
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.0),
              Text(
                time,
                style: TextStyle(
                  color: ColorValues.grey,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}