import 'package:datingapp/Utils/Widgets/Chat_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Model/ChatModel.dart';
import '../../Utils/Widgets/CustomWidgets.dart';
import '../../const/Colors.dart';
import '../Notifications/Permission.dart';
import 'ChatScreen.dart';

class Inbox extends StatelessWidget {
  Inbox({Key? key}) : super(key: key);



  List<ChatModel> chatList = [
    ChatModel(
      name: 'Jasmine',
      message: 'How are you doing?',
      time: '12:00',
      unreadCount: 19,
      photo: 'assets/model.jpg',
    ),
    ChatModel(
      name: 'John',
      message: 'Hey there!',
      time: '11:30',
      unreadCount: 5,
      photo: 'assets/model2.jpg',
    ),
    ChatModel(
      name: 'Alice',
      message: 'Ready for the meeting?',
      time: '10:45',
      unreadCount: 0,
      photo: 'assets/model3.png',
    ),
    ChatModel(
      name: 'Bob',
      message: 'Sure, let\'s do it!',
      time: '09:15',
      unreadCount: 2,
      photo: 'assets/model2.jpg',
    ),
    ChatModel(
      name: 'John',
      message: 'Hey there!',
      time: '11:30',
      unreadCount: 5,
      photo: 'assets/model2.jpg',
    ),
    ChatModel(
      name: 'Alice',
      message: 'Ready for the meeting?',
      time: '10:45',
      unreadCount: 0,
      photo: 'assets/model3.png',
    ),
    ChatModel(
      name: 'Bob',
      message: 'Sure, let\'s do it!',
      time: '09:15',
      unreadCount: 2,
      photo: 'assets/model2.jpg',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: roundedBorder_button('assets/menu.svg', () {}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Mesaage',
              style: TextStyle(
                  color: ColorValues.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            roundedBorder_button('assets/noti.svg', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Permission()),
              );
            }),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*0.8,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15),
                  child: Text(
                    'Active',
                    style: TextStyle(
                        color: ColorValues.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              height: MediaQuery.of(context).size.height *0.13,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return               ActiveFriends_Widget(chatList[index].photo, chatList[index].name, context)
                  ;
                },
              ),
            ),

              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 15),
                  child: Text(
                    'Message',
                    style: TextStyle(
                        color: ColorValues.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height *0.101 *chatList.length,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: chatList.length, // Replace with the actual list length
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: (){
                          Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChatScreen()),
                              );
                        },
                        child: Chat_Widget(chat: chatList[index])); // Replace with your chat data
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
