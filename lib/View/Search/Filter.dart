import 'package:datingapp/Utils/Widgets/CustomButton.dart';
import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';

import '../../Utils/Widgets/CustomWidgets.dart';

class Filter extends StatefulWidget {
   Filter({Key? key}) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
   double _sliderValue = 30;
   List<String> sports = [
     'sports',
     'books',
     'music',
     'cooking',

   ];
   Set<int> selectedIndices = Set<int>();
   List<String> criteria = [
     'Every',
     'Online',
     'New',

   ];
   int selectedMaritalStatus = -1;

   RangeValues _rangeValues = RangeValues(0, 70);


   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorValues.lightpink,
        scrolledUnderElevation: 0,
        leading: backbutton2(context),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Text(
              'Filter',
              style: TextStyle(
                  color: ColorValues.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 30,
              width: 30,
            )
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Location',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height *0.06,
                width: double.infinity,
                child: TextField(
                  decoration: InputDecoration(
          
          
                    filled: true,
                    fillColor: ColorValues.white,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          
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
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Distance',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  overlayColor: Colors.transparent,
                  thumbColor: Colors.blue, // Customize thumb color
                ),
                child: Slider(
                  activeColor: ColorValues.pinkmain,
                  value: _sliderValue,
                  onChanged: (value) {
                    setState(() {
                      _sliderValue = value;
                    });
                  },
                  min: 0.0,
                  max: 100.0,
                  label: '$_sliderValue', // Display value on the thumb
                ),
          
              ), SizedBox(height: 10,),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '0km - ${_sliderValue.roundToDouble()} km',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 16),
                ),
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Interest',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
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
                        color: selectedIndices.contains(index)
                            ? ColorValues.pinkmain
                            : ColorValues.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: selectedIndices.contains(index)
                              ? ColorValues.pinkmain
                              : ColorValues.white,
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
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Filtering criteria',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              SizedBox(height: 10,),
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
                itemCount: criteria.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMaritalStatus = index;
                      });
                    },
                    child: Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: selectedMaritalStatus == index
                            ? ColorValues.pinkmain
                            : ColorValues.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: selectedMaritalStatus == index
                              ? ColorValues.pinkmain
                              : ColorValues.white,
                          width: 2.0,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          criteria[index],
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: ColorValues.grey,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Age range',
                  style: TextStyle(
                      color: ColorValues.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
              ),
              SizedBox(height: 10,),
              RangeSlider(
                values: _rangeValues,
                onChanged: (RangeValues values) {
                  setState(() {
                    _rangeValues = values;
                  });
                },
                min: 0.0,
                max: 100.0,
                divisions: 100,
                labels: RangeLabels('${_rangeValues.start}', '${_rangeValues.end}'),
                activeColor: ColorValues.pinkmain,
                inactiveColor: Colors.grey.withOpacity(0.5),
              ),
              SizedBox(height: 20,),
              CustomButton(text: 'Apply', onPressed: (){}),
          
          
          
          SizedBox(height: 20,)
          
            ],
          ),
        ),
      ),
    );
  }
}
