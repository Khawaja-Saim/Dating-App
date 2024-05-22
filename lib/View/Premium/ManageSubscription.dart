import 'package:datingapp/Utils/Widgets/CustomButton.dart';
import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'PackageDetails.dart';

class ManageSubscription extends StatefulWidget {
  ManageSubscription({Key? key}) : super(key: key);

  @override
  State<ManageSubscription> createState() => _ManageSubscriptionState();
}

class _ManageSubscriptionState extends State<ManageSubscription> {
  int selectedContainerIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: backbutton2(context),
        title: Center(
          child: Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.16),
            child: Text(
              'Manage Subscription',
              style: TextStyle(
                  color: ColorValues.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black.withOpacity(0.02)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorValues.pinkmain),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Go Premium',
                        style: TextStyle(
                            color: ColorValues.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            end: Alignment.topCenter,
                            begin: Alignment.bottomRight,
                            colors: [
                              Color(0xffE8B5B5),
                              Color(0xffAC5829)
                            ], // Add your desired colors
                          ),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/fillheart.svg', // Add your SVG asset here
                            height: 18,
                            width: 19,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Text(
                        'Like Without Limits',
                        style: TextStyle(
                            color: ColorValues.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'Increase your chances of matching by liking as many people as you want',
                          style: TextStyle(
                              color: ColorValues.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildSelectableContainer(0, '3', '9.99'),
                          SizedBox(
                            width: 5,
                          ),
                          buildSelectableContainer(1, '6', '5.99'),
                          SizedBox(
                            width: 5,
                          ),
                          buildSelectableContainer(2, '12', '14.99'),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          'By tapping “Continue”. you agree to our Terms and your Apple ID will be charged. Your subscription will automatically renew at the same price and package length until you cancel in your App Store account.',
                          style: TextStyle(
                              color: ColorValues.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorValues.lightpink),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PackageDetails()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: Text(
                              'Continue',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSelectableContainer(int index, String duration, String amount) {
    bool isSelected = selectedContainerIndex == index;

    return InkWell(
      onTap: () {
        print('object');
        setState(() {
          selectedContainerIndex = index;
        });
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width * 0.28,
        decoration: BoxDecoration(
          color: ColorValues.premiumgrey,
          border: Border.all(color: ColorValues.pinkmain),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              duration,
              style: TextStyle(
                color: isSelected ? ColorValues.pinkmain : ColorValues.grey,
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              'months',
              style: TextStyle(
                color: isSelected ? ColorValues.pinkmain : ColorValues.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            Text(
              '\$${amount}/mo',
              style: TextStyle(
                color: isSelected ? ColorValues.pinkmain : ColorValues.grey,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
