import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../const/Colors.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({
    Key? key,
    required this.tabs,
    required this.selectedTabIndex,
    required this.onTabSelected,
  }) : super(key: key);

  final List<String> tabs;
  final int selectedTabIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorValues.lightpink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          tabs.length * 2 - 1,
              (index) {
            if (index.isEven) {
              final tabIndex = index ~/ 2;
              return GestureDetector(
                onTap: () => onTabSelected(tabIndex),
                child: Tab(
                  child: Text(
                    tabs[tabIndex],
                    style: TextStyle(
                      color: selectedTabIndex == tabIndex
                          ? ColorValues.pinkmain
                          : ColorValues.grey,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              );
            } else {
              return Container(
                height: 25,
                width: 3,
                color: ColorValues.grey,
              );
            }
          },
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(48.0); // Set the height for the tabs
}
