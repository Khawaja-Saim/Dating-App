import 'package:datingapp/View/Search/Filter.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Utils/Widgets/CustomWidgets.dart';

class Search extends StatelessWidget {
   Search({Key? key}) : super(key: key);
List<String> history=[
  'seosun',
  'Hayeon',
  'Doyoon',
];

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.topCenter,
      insetPadding: EdgeInsets.all(0), // Ensure no padding around the Dialog
      child: FractionallySizedBox(
        widthFactor: 1.0, // Set the width factor to take up the available space
        child: Container(
          height: MediaQuery.of(context).size.height *0.43,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorValues.pinkmain,
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height *0.02,),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  backbutton2(context),
SizedBox(width: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height *0.06,
                    width: MediaQuery.of(context).size.width *0.6,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Transform.scale(
                            scale: 0.4,
                            child: InkWell(
                                onTap: () {},
                                child: SvgPicture.asset('assets/search.svg'))),

                        filled: true,
                        fillColor: ColorValues.white,
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                        hintStyle: TextStyle(color: ColorValues.pinkmain,fontSize: 14),
                        hintText: 'search...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                          BorderSide(color: ColorValues.grey.withOpacity(0.5)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide:
                          BorderSide(color: ColorValues.grey.withOpacity(0.5)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: ColorValues.pinkmain),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20.0),
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
                            child: SvgPicture.asset(
                              'assets/filter.svg',
                              color: ColorValues.pinkmain, // Icon color
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.02,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: MediaQuery.of(context).size.height *0.27,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorValues.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.all(10),
                    itemCount: history.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Icon(CupertinoIcons.arrow_up_left, size: 20,),
                              SizedBox(width: 10,),
                              Text(history[index], style: TextStyle(color: ColorValues.pinkmain, fontSize: 16),),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: InkWell(
                                    child: Icon(Icons.cancel_outlined, color: ColorValues.pinkmain,),
                                    onTap: () {
                                                                        },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Divider(thickness: 1,color: ColorValues.grey.withOpacity(0.3),)
                        ],
                      );
                    },
                  )
                  ,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
