import 'package:datingapp/const/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String label;
  final List<String> items;
  final String? selectedItem;
  final ValueChanged<String?> onChanged;

  const CustomDropdown({
    required this.label,
    required this.items,
    required this.selectedItem,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 45,
          width: double.infinity,
          decoration: BoxDecoration(
            color: ColorValues.lightpink,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: DropdownButton<String>(
              underline: Container(), // Remove the underline

              value: selectedItem,
              isExpanded: false,
              isDense: true,
              iconSize: 16,
              style: TextStyle(color: ColorValues.grey,fontSize: 12,fontWeight: FontWeight.w400),
              icon: Icon(CupertinoIcons.chevron_down,color: ColorValues.grey,),
              onChanged: onChanged,
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
