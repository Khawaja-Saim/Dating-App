import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/Colors.dart';
import 'LogIn/LogIn.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Center(
              child: Image.asset(
            'assets/onboard.png',
            height: MediaQuery.of(context).size.height * 0.35,
            width: MediaQuery.of(context).size.width * 0.7,
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
            'Find the best partner!',
            style: TextStyle(
                color: Color(0xff929292),
                fontWeight: FontWeight.w500,
                fontSize: 25),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            'Join us and join millions of others Get social',
            style: TextStyle(
                color: Color(0xff929292),
                fontWeight: FontWeight.w500,
                fontSize: 15),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LogIn()),
                );
              },
              child: Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorValues.pinkmain, // Circle color
                ),
                child: Center(
                  child: Icon(
                    CupertinoIcons.arrow_right,
                    color: Colors.white, // Icon color
                    size: 33.0, // Icon size
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.15,)
        ],
      ),
    );
  }
}
