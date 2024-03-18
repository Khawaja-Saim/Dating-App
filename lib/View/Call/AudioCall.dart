import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';

import '../../Utils/Widgets/CustomWidgets.dart';

class AudioCall extends StatelessWidget {
  const AudioCall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: CircularImage('assets/model1.png', 150, 150)),
          SizedBox(height: MediaQuery.of(context).size.height *0.13,),
          Text('Jasmine',style: TextStyle(color: ColorValues.grey,fontSize: 24,fontWeight: FontWeight.w600),),
          SizedBox(height: MediaQuery.of(context).size.height *0.03,),
          Text('2:00:00',style: TextStyle(color: ColorValues.grey,fontSize: 18,fontWeight: FontWeight.w400),),
          SizedBox(height: MediaQuery.of(context).size.height *0.07,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularButton('assets/chat.svg', ColorValues.pinkmain, () { }),
              SizedBox(width: MediaQuery.of(context).size.width*0.1,),
              CircularButton('assets/endcall.svg', ColorValues.errorColor, () {
                Navigator.pop(context);
              }),
              SizedBox(width: MediaQuery.of(context).size.width*0.1,),
              CircularButton('assets/switch.svg', ColorValues.pinkmain, () { })

            ],
          )

        ],
      ),
    );
  }
}
