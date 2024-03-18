import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Widgets/CustomWidgets.dart';
import '../../const/Colors.dart';

class FavouritesTab extends StatelessWidget {
   FavouritesTab({Key? key}) : super(key: key);
  final List<String> candidates = [
    'assets/model1.png',
    'assets/model4.png',
    'assets/model5.png',
    'assets/model3.png',
    'assets/model.jpg',
    'assets/model2.jpg',

  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.8
        ),
        itemCount: candidates.length, // Adjust the itemCount as needed
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height *0.05,
            width: MediaQuery.of(context).size.width *0.2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(candidates[index]), fit: BoxFit.cover)

            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child:               Container(
                      width: 30,
                      height: 30,
                      decoration:
                      BoxDecoration(shape: BoxShape.circle, color: ColorValues.pinkmain, boxShadow: [
                        BoxShadow(
                          color: CupertinoColors.systemBlue.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 0.3,
                          offset: Offset(-2, 6), // Corrected line
                        )
                      ]),
                      child: Center(
                        child: Transform.scale(
                          scale: 0.7,
                          child: SvgPicture.asset(
                            'assets/fillheart.svg',
                          ),
                        ),
                      ),
                    ),

                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: MediaQuery.of(context).size.height *0.07,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ColorValues.lightblack.withOpacity(0.4),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)),


                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Jasmine',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: ColorValues.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
