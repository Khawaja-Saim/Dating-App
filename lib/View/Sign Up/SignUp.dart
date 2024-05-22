import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomWidgets.dart';
import '../../const/Colors.dart';
import 'ProfileSetup1.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: ColorValues.pinkmain,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32),
                            bottomRight: Radius.circular(32))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        backbutton(context),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                        Text(
                          'Sign up',
                          style: TextStyle(
                              color: ColorValues.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1,
                        top: MediaQuery.of(context).size.height * 0.26),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.75,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorValues.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 15),
                            child: Text(
                              'Enter the information below to create a new account',
                              style: TextStyle(
                                  color: ColorValues.grey,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Name',
                                style: TextStyle(
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Custom_TextField(
                              Transform.scale(
                                  scale: 0.4,
                                  child:
                                      SvgPicture.asset('assets/profile.svg')),
                              'Daniel chung',
                              context,
                              (p0) {}),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Phone Number',
                                style: TextStyle(
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Custom_TextField(
                              Transform.scale(
                                  scale: 0.4,
                                  child: SvgPicture.asset('assets/phone.svg')),
                              '+55-9154679386',
                              context,
                              (p0) {}),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Custom_TextField(
                              Transform.scale(
                                  scale: 0.4,
                                  child: SvgPicture.asset('assets/email.svg')),
                              'Danielchung@Gmail.com',
                              context,
                              (p0) {}),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Password',
                                style: TextStyle(
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Custom_TextField(
                              Transform.scale(
                                  scale: 0.4,
                                  child:
                                      SvgPicture.asset('assets/password.svg')),
                              '********',
                              context,
                              (p0) {}),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Verify password',
                                style: TextStyle(
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Custom_TextField(
                              Transform.scale(
                                  scale: 0.4,
                                  child:
                                      SvgPicture.asset('assets/password.svg')),
                              '********',
                              context,
                              (p0) {}),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 15),
                            child: CustomButton(
                              text: 'Sign up',
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileSetup1()),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  roundedBorder_button('assets/apple.svg', () {}),
                  SizedBox(
                    width: 20,
                  ),
                  roundedBorder_button('assets/google.svg', () {}),
                  SizedBox(
                    width: 20,
                  ),
                  roundedBorder_button('assets/fb.svg', () {}),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                          color: ColorValues.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                            color: ColorValues.pinkmain,
                            fontWeight: FontWeight.w400,
                            fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              )
            ],
          ),
        ),
      ),
    );
  }
}
