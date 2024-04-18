import 'package:datingapp/Utils/Widgets/CustomWidgets.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';

class DiscoverySetting extends StatefulWidget {
   DiscoverySetting({Key? key}) : super(key: key);

  @override
  State<DiscoverySetting> createState() => _DiscoverySettingState();
}

class _DiscoverySettingState extends State<DiscoverySetting> {
   double _distancerange = 50.0;
   double _agecerange = 50.0;
   double _photosrange = 2.0;


   bool _isSwitched1 = false;
   bool _isSwitched2 = false;
   bool _isSwitched3 = false;



   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.white,
      appBar: AppBar(
        backgroundColor: ColorValues.pinkmain,
        leading: backbutton(context),
        title: Text('Discovery setting',style: TextStyle(color: ColorValues.grey,fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height *0.1,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorValues.lightpink
                ),
                child: Column(
                  children: [
                    // SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                Text('Maximum Distance',style: TextStyle(color: ColorValues.grey,fontSize: 14,fontWeight: FontWeight.w500)),
                        Text(_distancerange.toInt().toString(),style: TextStyle(color: ColorValues.grey,fontSize: 14,fontWeight: FontWeight.w500)),

                      ],
                    ),

                    Container(
                      height: 20,
                      width: double.infinity,
                      child: Transform.scale(
                        scale: 1.18,
                        child: SliderTheme(
                          data: SliderThemeData(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                          ),
                          child: Slider(
                            value: _distancerange,
                            min: 0.0,
                            max: 200.0,
                            activeColor: ColorValues.pinkmain,
                            thumbColor: ColorValues.pinkmain,
                            onChanged: (value) {
                              setState(() {
                                _distancerange = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('only show people in this range',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w300)),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 10,
                  width: 10,
                  child: Transform.scale(
                    scale: 0.5,
                    child: Switch(
                      value: _isSwitched1,
                      activeColor: ColorValues.pinkmain,
                      onChanged: (value) {
                        setState(() {
                          _isSwitched1 = value;
                        });
                      },
                    ),
                  ),
                ),


            ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height *0.07,
                width: double.infinity,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorValues.lightpink
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Show me',style: TextStyle(color: ColorValues.grey,fontSize: 14,fontWeight: FontWeight.w500)),
                    Text('Men',style: TextStyle(color: ColorValues.grey,fontSize: 12,fontWeight: FontWeight.w400)),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height *0.1,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorValues.lightpink
                ),
                child: Column(
                  children: [
                    // SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Age Range',style: TextStyle(color: ColorValues.grey,fontSize: 14,fontWeight: FontWeight.w500)),
                        Text(_agecerange.toInt().toString() +'-90',style: TextStyle(color: ColorValues.grey,fontSize: 14,fontWeight: FontWeight.w500)),

                      ],
                    ),

                    Container(
                      height: 20,
                      width: double.infinity,
                      child: Transform.scale(
                        scale: 1.18,
                        child: SliderTheme(
                          data: SliderThemeData(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                          ),
                          child: Slider(
                            value: _agecerange,
                            min: 0.0,
                            max: 90.0,
                            activeColor: ColorValues.pinkmain,
                            thumbColor: ColorValues.pinkmain,
                            onChanged: (value) {
                              setState(() {
                                _agecerange = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('only show people in this range',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w300)),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          height: 10,
                          width: 10,
                          child: Transform.scale(
                            scale: 0.5,
                            child: Switch(
                              value: _isSwitched2,
                              activeColor: ColorValues.pinkmain,
                              onChanged: (value) {
                                setState(() {
                                  _isSwitched2 = value;
                                });
                              },
                            ),
                          ),
                        ),


                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 5,),
              Text('Boobs uses this preference to suggest matches. some match suggestions may not fall within your desired parameter',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w300)),

              SizedBox(height: 10,),
              Row(
                children: [
                  Text('Premium Discovery',style: TextStyle(color: ColorValues.grey,fontSize: 15,fontWeight: FontWeight.w500)),
                  SizedBox(width: 15,),
                  Container(
                    width: 58,
                    height: 25,
                    transform: Matrix4.skewX(-.4),
                    decoration: BoxDecoration(

                      color: ColorValues.lightpink,
                    ),
                    child:                     Center(child: Text('Boobs gold',style: TextStyle(color: ColorValues.grey,fontSize: 9,fontWeight: FontWeight.w500))),
                      
                  ),

                ],
              ),
              SizedBox(height: 10,),
              Container(
                // height: MediaQuery.of(context).size.height *0.1,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorValues.lightpink
                ),
                child: Column(
                  children: [
                    // SizedBox(height: 10,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Minimum Number of photos ',style: TextStyle(color: ColorValues.grey,fontSize: 11,fontWeight: FontWeight.w500))),

                    Container(
                      height: 20,
                      width: double.infinity,
                      child: Transform.scale(
                        scale: 1.18,
                        child: SliderTheme(
                          data: SliderThemeData(
                            thumbShape: RoundSliderThumbShape(enabledThumbRadius: 6),
                          ),
                          child: Slider(
                            value: _photosrange,
                            min: 0.0,
                            max: 100.0,
                            activeColor: ColorValues.pinkmain,
                            thumbColor: ColorValues.pinkmain,
                            onChanged: (value) {
                              setState(() {
                                _photosrange = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Has a bio ',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w300)),
                        Container(
                          margin: EdgeInsets.only(right: 8),
                          height: 10,
                          width: 10,
                          child: Transform.scale(
                            scale: 0.5,
                            child: Switch(
                              value: _isSwitched3,
                              activeColor: ColorValues.pinkmain,
                              onChanged: (value) {
                                setState(() {
                                  _isSwitched3 = value;
                                });
                              },
                            ),
                          ),
                        ),


                      ],
                    ),
                    SizedBox(height: 10,),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Interest ',style: TextStyle(color: ColorValues.grey,fontSize: 12,fontWeight: FontWeight.w500))),
SizedBox(height: 15,),
                    DiscoveryInterests('Looking for ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Add languages ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Zodiac ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Education ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Family plans ',context),
                    SizedBox(height: 10,),DiscoveryInterests('COVID Vaccine ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Personality Type ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Communication style ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Love style ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Pets ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Drinking ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Smoking ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Workout ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Social media ',context),
                    SizedBox(height: 10,),DiscoveryInterests('Sleeping Habits',context),
                    SizedBox(height: 10,),DiscoveryInterests('Dietary Preference ',context),
                    SizedBox(height: 10,),
                  ],
                ),
              ),
              SizedBox(height: 5,),
              Text('We’ll show you people who match your vibe, but you’ll still be able to match with people outside of your selections.',style: TextStyle(color: Colors.black,fontSize: 9,fontWeight: FontWeight.w300)),
              SizedBox(height: 20,),

            ],
          ),
        ),
      ),
    );
  }
}
