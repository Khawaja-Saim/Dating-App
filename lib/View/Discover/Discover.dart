import 'package:datingapp/View/DiscoverySetting/DiscoverySetting.dart';
import 'package:datingapp/View/Notifications/Permission.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Widgets/CustomWidgets.dart';
import '../../const/Colors.dart';
import '../Match/PerfectMatch.dart';
import '../ViewProfile/ViewProfile.dart';

class Discover extends StatelessWidget {
  Discover({Key? key}) : super(key: key);

  CardSwiperController controller = CardSwiperController();

  final List<String> candidates = [
    'assets/model1.png',
    'assets/model.jpg',
    'assets/model.jpg',
    'assets/model.jpg',
  ];
  final List<String> categories = [
    'Sport',
    'Cookinging',
    'Reading',
    'Netflix',
  ];

  // final cards = candidates.map(ExampleCard.new).toList();

  bool _onSwipe(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top',
    );
    return true;
  }

  bool _onUndo(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    debugPrint(
      'The card $currentIndex was undod from the ${direction.name}',
    );
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: Image.asset('assets/logo.png',height: 30,width: 30,),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 9.0),
                child: Text(
                  'Boobs',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Spacer(),
            roundedBorder_button('assets/noti.svg', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Permission()),
              );
            }),
            roundedBorder_button('assets/menu.svg', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DiscoverySetting()),
              );
            }),

          ],
        ),
      ),
      body: Column(
        children: [
          // SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.81,
              width: double.infinity,
              child: CardSwiper(
                controller: controller,
                cardsCount: candidates.length,
                onSwipe: _onSwipe,
                // onUndo: _onUndo,
                numberOfCardsDisplayed: 3,
                backCardOffset: const Offset(-20, -20),
                // padding: const EdgeInsets.all(14.0),
                cardBuilder: (
                  context,
                  index,
                  horizontalThresholdPercentage,
                  verticalThresholdPercentage,
                ) {
                  // Use Image.asset to display the image
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewProfile()),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                candidates[index],
                              ),
                              fit: BoxFit.cover)),
                      // child: Image.asset(
                      //   candidates[index],
                      //   fit: BoxFit.cover,
                      // ),
                      child: horizontalThresholdPercentage > 0
                          ? Align(
                              alignment: Alignment.center,
                              child: CircularButton('assets/fillheart.svg',
                                  ColorValues.pinkmain, () {}))
                          : horizontalThresholdPercentage < 0
                              ? Align(
                                  alignment: Alignment.center,
                                  child: CircularButton('assets/cancel.svg',
                                      ColorValues.white, () {}))
                              : Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 15,
                                            // Adjust the height as needed
                                            width: 100,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                              BorderRadius.circular(
                                                  10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Recently active',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5,),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Maria Barnett, 24',
                                              style: TextStyle(
                                                  color: ColorValues.white,
                                                  fontSize: 20),
                                            )),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                                'assets/Vector (16).svg'),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              'Interest',
                                              style: TextStyle(
                                                  color: ColorValues.white,
                                                  fontSize: 13),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          height: 15,
                                          width: double.infinity,
                                          child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: categories.length,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index) {
                                              // Build each category item using Container widget
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5.0),
                                                child: Container(
                                                  height: 20,
                                                  // Adjust the height as needed
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      categories[index],
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 10,
                                                      ),
                                                    ),
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 22.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              CircularButton(
                                                  'assets/cancel.svg',
                                                  ColorValues.white,
                                                  () {}),
                                              CircularButton(
                                                  'assets/fillheart.svg',
                                                  ColorValues.pinkmain,
                                                  () {}),
                                              CircularButton('assets/star.svg',
                                                  ColorValues.white, () {}),
                                              CircularButton(
                                                  'assets/current.svg',
                                                  ColorValues.pinkmain,
                                                  () {}),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
