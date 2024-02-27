import 'package:datingapp/View/Sign%20Up/SignUp.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/Widgets/CustomButton.dart';
import '../../Utils/Widgets/CustomWidgets.dart';
import '../MyBottomNavBar/MyBottomNavBar.dart';

class LogIn extends StatefulWidget {
   LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
   bool _isChecked = false;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.backgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorValues.pinkmain,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32),bottomRight:Radius.circular(32) )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
        
                        backbutton(context),
                        SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                        Text(
                          'LOG IN',
                          style: TextStyle(
                              color: ColorValues.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 30),
                        ),
        
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width *0.1,right: MediaQuery.of(context).size.width *0.1,top: MediaQuery.of(context).size.height *0.26),
                    child: Container(
                      height: MediaQuery.of(context).size.height *0.44,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorValues.white,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15),
                            child: Text(
                              'Simply enter your email ID to log in to your account.',
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
                                'Email',
                                style: TextStyle(
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Custom_TextField(Transform.scale(
                              scale: 0.4,
                              child: SvgPicture.asset('assets/email.svg')),'Danielchung@Gmail.com',context),
        
                          SizedBox(
                            height: MediaQuery.of(context).size.height *0.025,
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
                          SizedBox(height: 5,),
                          Custom_TextField(Transform.scale(
                              scale: 0.4,
                              child: SvgPicture.asset('assets/password.svg')),'********',context),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Container(
                            height: 20,
                                  width: 20,// Adjust the scale factor as needed to decrease the size
                                  child: Theme(
                                    data: ThemeData(
                                      unselectedWidgetColor: ColorValues.grey,
                                      // Border color
                                      toggleableActiveColor:
                                      ColorValues.grey, // Fill color when checked
                                    ),
                                    child: Checkbox(
                                      side: BorderSide(color: ColorValues.grey),
        
                                      activeColor: ColorValues.pinkmain,
                                      // The color to use when this checkbox is checked.
                                      value: _isChecked,
                                      // visualDensity: VisualDensity.compact,
                                      onChanged: (bool? newValue) {
                                        setState(() {
                                          _isChecked = newValue ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 3,),
                                Text(
                                  'Remember me',
                                  style: TextStyle(
                                      color: ColorValues.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      onTap: () {},
                                      child: Text(
                                        'Forgot password?',
                                        style: TextStyle(
                                            color: ColorValues.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 15),
                            child: CustomButton(text: 'Log In', onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyBottomNavBar()),
                              );
                            },),
                          ),
        
                        ],
                      ),
                    ),
                  ),
        
                ],
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Do not have an account?',
                      style: TextStyle(
                          color: ColorValues.grey,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUp()),
                        );
                      },
                      child: Text(
                        'Sign Up',
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
              SizedBox(height: MediaQuery.of(context).size.height*0.03,)
            ],
          ),
        ),
      ),
    );
  }
}
