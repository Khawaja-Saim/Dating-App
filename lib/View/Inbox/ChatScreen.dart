import 'package:datingapp/View/Call/AudioCall.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/Widgets/Chat_Widget.dart';
import '../../Utils/Widgets/CustomWidgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: backbutton2(context),
        title: Row(
          children: [
            // SizedBox(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jasmine',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: ColorValues.white,
                      size: 12,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Active',
                      style: TextStyle(
                          color: ColorValues.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
                child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AudioCall()),
                          );
                        },
                        child: SvgPicture.asset('assets/audiocall.svg')))),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: () {}, child: SvgPicture.asset('assets/videocall.svg'))
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height *0.79,
              child: ListView.builder(
                itemCount: 10, // Replace with your actual list length
                itemBuilder: (context, index) {
                  return ChatBubble(
                    isMe: index % 2 == 0, // Alternate between sender and receiver
                    message: 'Hello, this is message $index!',
                    time: '12:00 PM',
                  );
                },
              ),
            ),
            // Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.06,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Transform.scale(
                          scale: 0.5,
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset('assets/attachmedia.svg'))),
                      suffixIcon: Transform.scale(
                          scale: 0.5,
                          child: InkWell(
                              onTap: () {},
                              child: SvgPicture.asset('assets/send.svg'))),
                      filled: true,
                      fillColor: ColorValues.white,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                      hintText: 'Type here...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: ColorValues.grey.withOpacity(0.5)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:
                            BorderSide(color: ColorValues.grey.withOpacity(0.5)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: ColorValues.pinkmain),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
