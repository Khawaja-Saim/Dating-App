import 'package:datingapp/const/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomWidgets.dart';
import '../Premium/ManageSubscription.dart';

class PerfectMatch extends StatelessWidget {
  const PerfectMatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: backbutton2(context),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),


          Stack(

            children: [
              Center(child: Padding(
                padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*0.25),
                child: tiltimage('assets/model1.png',10,context),
              )),

              Padding(
                padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.13,right: MediaQuery.of(context).size.width*0.2),
                child: Center(child: tiltimage('assets/model2.jpg',-10,context)),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Its a match, Jude!',
              style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500,color: ColorValues.grey),textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              'Start a conversation now with each other ',
              style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: ColorValues.grey),textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(text: 'Say hello', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ManageSubscription()),
                );
              },

              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width *0.16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(text: 'Keep swipping', onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Notifications()),
                // );
              },

              ),
            ),
          ),
        ],
      ),
    );
  }
}
