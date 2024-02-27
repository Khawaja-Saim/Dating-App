import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const/Colors.dart';

Widget backbutton(BuildContext context ) {
  return InkWell(
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
            color: ColorValues.white.withOpacity(0.25), // Circle color
          ),
          child: Center(
            child: Icon(
              CupertinoIcons.arrow_left,
              color: Colors.white, // Icon color
              size: 22.0, // Icon size
            ),
          ),
        ),
      ),
    ),
  );
}

Widget Custom_TextField(Widget icon, String hintext,BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      height: 40,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorValues.lightpink,
        // boxShadow: [
        //   BoxShadow(
        //       color: ColorValues.LightGray,
        //       blurRadius: 2,
        //       offset: Offset(1, 2)
        //   ),
        // ],
      ),
      child: TextFormField(
        // controller: controller,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5),
          prefixIcon: icon,
          hintText: hintext,
          hintStyle: TextStyle(
            color: ColorValues.grey,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    ),
  );
}

Widget  roundedBorder_button(String icon , VoidCallback callback){
  return InkWell(
    onTap: callback,
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
            child: SvgPicture.asset(
              icon,
              color: ColorValues.pinkmain, // Icon color
            ),
          ),
        ),
      ),
    ),
  );
}


Widget CircularImage(String pic, double height, double width) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(image: AssetImage(pic), fit: BoxFit.cover)

      // boxShadow: [
      //
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.5),
      //     spreadRadius: 1,
      //
      //
      //   )
      // ]
    ),
  );
}

Widget CircularButton(String svg,Color color ,VoidCallback voidCallback){
  return InkWell(
    onTap: voidCallback,
    child: Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
          boxShadow: [
            BoxShadow(
              color: CupertinoColors.systemBlue.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 0.3,
              offset: Offset(-2, 6), // Corrected line
            )
          ]
      ),
      child: Center(
        child: SvgPicture.asset(
          svg,
        ),
      ),
    ),
  );
}