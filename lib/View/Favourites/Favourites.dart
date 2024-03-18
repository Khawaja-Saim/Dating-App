import 'package:flutter/material.dart';

import '../../Utils/Widgets/CustomWidgets.dart';
import '../../const/Colors.dart';
import '../Search/Search.dart';
import 'FavouritesTab.dart';
import 'MatchTab.dart';

class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> with SingleTickerProviderStateMixin {
  late TabController _tabController = TabController(length: 2, vsync: this);

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {
        _currentIndex = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _navigateToTab(int index) {
    setState(() {
      _currentIndex = index;
      _tabController.animateTo(index);
    });
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
            roundedBorder_button('assets/search.svg', () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Search();

                },
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Search()),
              // );
            }),
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height *0.82,
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 15,),
            DefaultTabController(
              length: 2,
              child: Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        height: 50,
                        child: Stack(
                          children: [
                            Container(
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: ColorValues.backgroundcolor,
                              ), // Grey container color
                            ),
                            TabBar(
                              indicatorSize: TabBarIndicatorSize.label,
                              // isScrollable: true,
                              padding: EdgeInsets.zero,
                              indicatorPadding: EdgeInsets.zero,
                              labelPadding: EdgeInsets.zero,
                              indicator: BoxDecoration(),
                              controller: _tabController,
                              onTap: (index) {
                                _navigateToTab(index);
                              },
                              tabs: [
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.5, // Adjusted width
                                  decoration: BoxDecoration(
                                    color: _currentIndex == 0 ? ColorValues.pinkmain : Colors.transparent,
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      _navigateToTab(0);
                                    },
                                    child: Text(
                                      'Favorite',
                                      style: TextStyle(
                                        color: _currentIndex == 0 ? ColorValues.grey : ColorValues.pinkmain,fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    color: _currentIndex == 1 ? ColorValues.pinkmain : Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(15)),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      _navigateToTab(1);
                                    },
                                    child: Text(
                                      'Match',
                                      style: TextStyle(
                                        color: _currentIndex == 1 ? ColorValues.grey : ColorValues.pinkmain,fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          FavouritesTab(),
                          MatchTab()                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
