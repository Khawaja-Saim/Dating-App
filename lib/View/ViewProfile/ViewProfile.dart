import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:datingapp/View/Inbox/ChatScreen.dart';
import 'package:datingapp/View/Match/PerfectMatch.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Notifications/Permission.dart';

class ViewProfile extends StatelessWidget {
   ViewProfile({Key? key}) : super(key: key);

   final List<String> imagePaths = [
     'assets/model1.png',
     'assets/model4.png',
     'assets/model5.png',
     'assets/model3.png',
     'assets/model.jpg',
     'assets/model2.jpg',
     // Add more image paths as needed
   ];

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      body: Stack(
        children: [

          SingleChildScrollView(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height *0.45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/model1.png'),fit: BoxFit.cover)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          backbutton2(context),
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: roundedBorder_button('assets/noti.svg', () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Permission()),
                              );
                            }),
                          ),
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0,bottom: 20),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 28,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(child: Text('10k Likes',style: TextStyle(color: ColorValues.white,fontSize: 12),)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.43),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      // height: 310,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: ColorValues.lightpink,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text('Maria Barnett, twenty-four',style: TextStyle(color: ColorValues.grey,fontSize: 18,fontWeight: FontWeight.w600),)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Transform.scale(
                                          scale: 1.3,
                                          child: SvgPicture.asset('assets/location.svg'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'France',
                                          style:
                                          TextStyle(color: ColorValues.grey, fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Expanded(child:                 Align(
                      alignment: Alignment.centerRight,
                                  child: CircularButton(
                                      'assets/chat2.svg', ColorValues.pinkmain, () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => ChatScreen()),
                                    );
                                  }),
                                ),
                                )

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'For',
                                  style: TextStyle(
                                      color: ColorValues.grey,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 8,),
                            Text(
                              'My name is stella johnson and i  enjoy meeting new people and find ways to help them have an uplifting experience. I enjoy read.....................',
                              style: TextStyle(
                                  color: ColorValues.grey,
                                  fontSize: 14),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Interested',
                                  style: TextStyle(
                                      color: ColorValues.grey,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 8.0,
                              mainAxisSpacing: 8.0,
                              childAspectRatio: 2.7
                            ),
                            itemCount: 5, // Adjust the itemCount as needed
                            itemBuilder: (context, index) {
                              return Container(
                                height: 28,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: ColorValues.white,
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(child: Text('sports',style: TextStyle(color: ColorValues.lightpink,fontSize: 12,fontWeight: FontWeight.w600),)),
                              );
                            },
                          ),
                        ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Pictures',
                                  style: TextStyle(
                                      color: ColorValues.grey,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            GridView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3, // Adjust the number of columns as needed
                                  crossAxisSpacing: 8.0,
                                  mainAxisSpacing: 8.0,
                                  childAspectRatio: 0.9

                              ),
                              itemCount: imagePaths.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(imagePaths[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            )


                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularButton('assets/cancel.svg', ColorValues.white, () {}),
                SizedBox(width: MediaQuery.of(context).size.width *0.1,),
                CircularButton('assets/fillheart.svg', ColorValues.pinkmain, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PerfectMatch()),
                  );
                }),
              ],
            ),
          ),

        ],
      ),
    );

  }
}


