import 'package:datingapp/Utils/Widgets/CustomButton.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';

class Permission extends StatelessWidget {
  const Permission({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
          body: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.06,),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: (){},
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: ColorValues.grey),
                    ),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.06,),

              Center(child: Image.asset('assets/notifi.png')),
              Text(
                'Enable notification’s',
                style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,color: ColorValues.grey),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Get push-notification when you get the match or receive a message',
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: ColorValues.grey),textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomButton(text: 'I want to be notified', onPressed: () {  },

                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

            ],
          ),
    );
  }
}
