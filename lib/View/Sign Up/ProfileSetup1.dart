import 'package:datingapp/Utils/Widgets/CustomButton.dart';
import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/Widgets/date_Dropdown.dart';
import 'ProfileSetup2.dart';

class ProfileSetup1 extends StatefulWidget {
  ProfileSetup1({Key? key}) : super(key: key);

  @override
  State<ProfileSetup1> createState() => _ProfileSetup1State();
}

class _ProfileSetup1State extends State<ProfileSetup1> {
  String selectedMonth = '1';
  String selectedDay = '1';
  String selectedYear = '2024';
  List<String> sports = [
    'sports',
    'books',
    'music',
    'cooking',
    'dance',
    'design',
    'technology',
    'athlete',
    'gambling'
  ];
  Set<int> selectedIndices = Set<int>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorValues.backgroundcolor,
        leading:             InkWell(
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
                  'Lets set up your profile!',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.23,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorValues.white,
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'When is your birthday? we do this Use to indicate your age',
                        style: TextStyle(
                            color: ColorValues.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: CustomDropdown(
                            label: 'Month',
                            items: [
                              '1',
                              '2',
                              '3',
                              '4',
                              '5',
                              '6',
                              '7',
                              '8',
                              '9',
                              '10',
                              '11',
                              '12',
                            ],
                            selectedItem: selectedMonth,
                            // You can set the default value
                            onChanged: (value) {
                              setState(() {
                                selectedMonth = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomDropdown(
                            label: 'Day',
                            items: List.generate(
                                31, (index) => (index + 1).toString()),

                            selectedItem: selectedDay,
                            // You can set the default value
                            onChanged: (value) {
                              setState(() {
                                selectedDay = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 1,
                          child: CustomDropdown(
                            label: 'Year',
                            items: List.generate(
                                100, (index) => (2024 - index).toString()),
                            selectedItem: selectedYear,
                            onChanged: (value) {
                              setState(() {
                                selectedYear = value!;
                              });
                            },
                          ),
                        ),
                      ],
                    )
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
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'What are your interests?',
                        style: TextStyle(
                            color: ColorValues.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
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
                      itemCount: sports.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedIndices.contains(index)) {
                                selectedIndices.remove(index);
                              } else {
                                selectedIndices.add(index);
                              }
                            });
                          },
                          child: Container(
                            height: 45,
                            decoration: BoxDecoration(
                              color: ColorValues.lightpink,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: selectedIndices.contains(index)
                                    ? ColorValues.pinkmain
                                    : ColorValues.lightpink,
                                width: 2.0,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                sports[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: ColorValues.grey,
                                ),
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
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(text: 'Continue', onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileSetup2()),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
