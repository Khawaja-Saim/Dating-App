import 'package:carousel_slider/carousel_slider.dart';
import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';

class BoostProfile extends StatefulWidget {
  const BoostProfile({Key? key}) : super(key: key);

  @override
  _BoostProfileState createState() => _BoostProfileState();
}

class _BoostProfileState extends State<BoostProfile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: ColorValues.pinkmain,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        child: CircularButton('assets/cancel.svg', Colors.white, () {}),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.25,
                      ),
                      Image.asset(
                        'assets/logo.png',
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Boobs',
                        style: TextStyle(
                          color: ColorValues.grey,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/boost.png',
                    height: 150,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Be Seen',
              style: TextStyle(
                color: ColorValues.grey,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Be a top profile in your area for 30 minutes to get more matches!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.35,
                enableInfiniteScroll: true,
                viewportFraction: 0.85,
                aspectRatio: 16 / 9, // Aspect ratio of each slide
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return BoostProfileWidget(context);
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (index) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ColorValues.pinkmain.withOpacity(_currentIndex == index ? 1.0 : 0.4),
                  ),
                );
              }),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.height *0.18,
                    color: ColorValues.grey,
                  ),
                  SizedBox(width: 10,),
                  Text('or',style: TextStyle(color: ColorValues.grey,fontWeight: FontWeight.bold,fontSize: 14,)),
                  SizedBox(width: 10,),

                  Container(
                    height: 0.5,
                    width: MediaQuery.of(context).size.height *0.19,
                    color: ColorValues.grey,
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width *0.9,
              decoration: BoxDecoration(
                  color: ColorValues.lightpink,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: ColorValues.grey, width: 1)),
              child:         Column(
                children: [
                  Container(
                    height: 30,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorValues.pinkmain,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                    ),

                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/logo.png',
                          height: 30,
                          width: 30,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Get Boobs Gold',
                          style: TextStyle(
                            color: ColorValues.grey,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child:
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 20,
                            width: 60,
                            decoration: BoxDecoration(
                                color: ColorValues.lightpink,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: ColorValues.grey, width: 1)),
                            child: Center(
                              child: Text(
                                'Select',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: ColorValues.pinkmain
                                ),
                              ),
                            ),
                          ),
                        ))
                      ],
                    ),
                  )
                ],
              ),

            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
