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
        leading: roundedBorder_button('assets/menu.svg', () {}),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Discover',
              style: TextStyle(
                  color: ColorValues.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            roundedBorder_button('assets/noti.svg', () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Permission()),
              );
            }),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.75,
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
                    onTap: (){
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
                                        Text('Maria Barnett, twenty-four',style: TextStyle(color: ColorValues.white,fontSize: 14),),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 11.0),
                                          child: Row(
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
                                                style: TextStyle(color: ColorValues.grey, fontSize: 11),
                                              ),
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton('assets/cancel.svg', ColorValues.white, () {}),
                CircularButton(
                    'assets/fillheart.svg', ColorValues.pinkmain, () {}),
                CircularButton('assets/star.svg', ColorValues.white, () {}),
                CircularButton(
                    'assets/current.svg', ColorValues.pinkmain, () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
