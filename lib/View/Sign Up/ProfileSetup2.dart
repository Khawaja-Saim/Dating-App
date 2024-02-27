import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Widgets/CustomButton.dart';
import '../../const/Colors.dart';
import '../LogIn/LogIn.dart';

class ProfileSetup2 extends StatefulWidget {
  ProfileSetup2({Key? key}) : super(key: key);

  @override
  State<ProfileSetup2> createState() => _ProfileSetup2State();
}

class _ProfileSetup2State extends State<ProfileSetup2> {
  List<String> maritalstatus = [
    'Single',
    'married',
    'Divorced',
    'Debauched',
    'Distance relationship',
  ];
  int selectedMaritalStatus = -1;

  List<String> bodystyles = [
    'slim',
    'work out',
    'Average',
    'tall',
    'attractive',
    'stallion',
    'Any style'
  ];
  int selected_bodystyle = -1;

  List<String> smokerlike = ["Yes", 'No'];
  int selected_smokerlike = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorValues.backgroundcolor,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorValues.white, // Circle color
                ),
                child: Center(
                  child: Icon(
                    CupertinoIcons.arrow_left,
                    color: ColorValues.pinkmain, // Icon color
                    size: 22.0, // Icon size
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: ColorValues.backgroundcolor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Let\'s set up your profile!',
                  style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.26,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorValues.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'What is your marital status?',
                        style: TextStyle(
                          color: ColorValues.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.8,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: maritalstatus.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedMaritalStatus = index;
                            });
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: ColorValues.lightpink,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: selectedMaritalStatus == index
                                    ? ColorValues.pinkmain
                                    : ColorValues.lightpink,
                                width: 2.0,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                maritalstatus[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorValues.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.33,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorValues.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'What is your body style?',
                        style: TextStyle(
                          color: ColorValues.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1.8,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: bodystyles.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selected_bodystyle = index;
                            });
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: ColorValues.lightpink,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: selected_bodystyle == index
                                    ? ColorValues.pinkmain
                                    : ColorValues.lightpink,
                                width: 2.0,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                bodystyles[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorValues.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.18,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorValues.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Would you like to date a smoker?',
                        style: TextStyle(
                          color: ColorValues.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selected_smokerlike = index;
                            });
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: ColorValues.lightpink,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: selected_smokerlike == index
                                    ? ColorValues.pinkmain
                                    : ColorValues.lightpink,
                                width: 2.0,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                smokerlike[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorValues.grey,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                text: 'Continue',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LogIn()),
                  );
                },
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
