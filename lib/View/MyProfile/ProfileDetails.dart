import 'package:datingapp/const/Colors.dart';
import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'About',
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
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: (){},
              child: Text(
                'Read more',
                style: TextStyle(
                    color: ColorValues.pinkmain,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'D.O.B',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                '22/10/1995',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Married',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                'Single',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Body style',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                'Slim',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Do',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                'domihon man',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'University',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                'France University',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'gender',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                'Female',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              Text(
                'French',
                style: TextStyle(
                    color: ColorValues.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Interest',
              style: TextStyle(
                  color: ColorValues.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
          ),


        ],
      ),
    );
  }
}
