import 'package:datingapp/Utils/Widgets/CustomButton.dart';
import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../BoostProfile/BoostProfile.dart';

class PackageDetails extends StatelessWidget {
  PackageDetails({Key? key}) : super(key: key);
  List<String> months = ['1', '2', '3'];
  List<String> prices = ['6.00', '4.17', '12.00'];

  List<String> benefits = [
    'Unlimited Likes',
    'See Who Likes You',
    'Unlimited Rewinds',
    '1 Free Boost per month',
    '5 Free Super Likes per week',
    'Passport',
    'Top Picks',
    'Control Your Profile',
    'Control Who Sees You',
    'Control Who You See',
    'Hide Ads'
  ];

  List<String> benefits2 = [
    '',
    '',
    '',
    '',
    '',
    'Match and chat with people anywhere in the world',
    'Browse through the daily curated selection of profiles',
    'Only show what you want them to know',
    'Manage who you’re seen by',
    'Choose the type of people you want to connect with.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorValues.pinkmain,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: ColorValues.lightpink,
                                boxShadow: [
                                  BoxShadow(
                                    color: CupertinoColors.systemBlue
                                        .withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 0.3,
                                    offset: Offset(-2, 6), // Corrected line
                                  )
                                ]),
                            child: Center(
                              child: Transform.scale(
                                scale: 0.7,
                                child: SvgPicture.asset(
                                  'assets/cancel.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.2,
                        ),
                        Image.asset(
                          'assets/logo.png',
                          height: 40,
                          width: 40,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Boobs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 40,
                          height: 16,
                          transform: Matrix4.skewX(-.3),
                          decoration: BoxDecoration(
                            color: ColorValues.premiumgrey,
                          ),
                          child: Center(
                              child: Text(
                            'Gold',
                            style: TextStyle(fontSize: 10),
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'See Who Likes You and match with them instantly with Boobs Gold',
                      style: TextStyle(
                          color: ColorValues.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select a Plan',
                    style: TextStyle(fontSize: 12),
                  )),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                itemCount: 3, // Adjust the number of items as needed
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: ColorValues.pinkmain, width: 2),
                          color: ColorValues.lightpink,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '${months[index]} Month',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: ColorValues.grey,
                                    fontWeight: FontWeight.w600),
                              )),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'US \$${prices[index]} / mo',
                                style: TextStyle(
                                    fontSize: 17, color: ColorValues.grey),
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorValues.pinkmain, width: 2),
                    color: ColorValues.lightpink,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: benefits.length,
                  // Adjust the number of items as needed
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        Icon(
                          Icons.done,
                          color: ColorValues.pinkmain,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              benefits[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  color: ColorValues.grey,
                                  fontWeight: FontWeight.w500),
                            ),
                            if (benefits[index] == 'Passport' ||
                                benefits[index] == 'Top Picks' ||
                                benefits[index] == 'Control Your Profile' ||
                                benefits[index] == 'Control Who Sees You' ||
                                benefits[index] == 'Control Who You See')
                              Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: Text(
                                  benefits2[index],
                                  style: TextStyle(
                                      fontSize: 10, color: ColorValues.grey),
                                ),
                              ),
                          ],
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'By tapping continue, you will be charged, your subscription will auto-renew for the same price and package length until you cancel via Play Store settings, and you agree to our Terms. ',
              style: TextStyle(fontSize: 9),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomButton(text: 'Continue', onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BoostProfile()),
                );
              }),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
