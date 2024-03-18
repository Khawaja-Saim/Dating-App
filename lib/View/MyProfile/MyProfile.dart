import 'package:datingapp/const/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../Utils/Widgets/CustomWidgets.dart';
import 'ProfileDetails.dart';
import 'ProfileImages.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>
    with SingleTickerProviderStateMixin {
  int _selectedTabIndex = 0;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorValues.lightpink,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              pinned: true,
              elevation: 0,
              scrolledUnderElevation: 0,
              backgroundColor: ColorValues.lightpink,
              leading: roundedBorder_button('assets/menu.svg', () {}),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  Text(
                    'My Profile',
                    style: TextStyle(
                        color: ColorValues.grey,
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  roundedBorder_button('assets/edit.svg', () {}),
                ],
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    Center(
                      child: Container(
                        height: 95,
                        width: 95,
                        child: Stack(
                          children: [
                            CircularImage('assets/model.jpg', 95, 95),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    color: ColorValues.pinkmain,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Center(
                                    child: Icon(
                                      CupertinoIcons.camera_fill,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Text(
                      'Stella',
                      style: TextStyle(
                          color: ColorValues.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 17),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.01,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                          style:
                              TextStyle(color: ColorValues.grey, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     InkWell(
                    //       onTap: () {
                    //         setState(() {
                    //           _selectedTabIndex = 0;
                    //         });
                    //       },
                    //       child: Text(
                    //         'Details',
                    //         style: TextStyle(
                    //             color: _selectedTabIndex == 0
                    //                 ? ColorValues.pinkmain
                    //                 : ColorValues.grey,
                    //             fontWeight: FontWeight.w700,
                    //             fontSize: 17),
                    //       ),
                    //     ),
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width * 0.2,
                    //     ),
                    //     Container(
                    //       height: 25,
                    //       width: 3,
                    //       color: ColorValues.grey,
                    //     ),
                    //     SizedBox(
                    //       width: MediaQuery.of(context).size.width * 0.2,
                    //     ),
                    //     InkWell(
                    //       onTap: () {
                    //         setState(() {
                    //           _selectedTabIndex = 1;
                    //         });
                    //       },
                    //       child: Text(
                    //         'Images',
                    //         style: TextStyle(
                    //             color: _selectedTabIndex == 1
                    //                 ? ColorValues.pinkmain
                    //                 : ColorValues.grey,
                    //             fontWeight: FontWeight.w700,
                    //             fontSize: 17),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
            SliverPersistentHeader(
              delegate: _MyTabBarDelegate(
                TabBar(
                  controller: _tabController,
                  // Provide the TabController here
                  indicatorWeight: 0.1,
                  indicator: BoxDecoration(),
                  // Empty decoration to hide the indicator
                  indicatorColor: ColorValues.pinkmain,
                  labelColor: ColorValues.pinkmain,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
                  unselectedLabelColor: ColorValues.grey,
                  tabs: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.106,
                        ),
                        Tab(text: 'Details'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                        Container(
                          height: 25,
                          width: 3,
                          color: ColorValues.grey,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.08,
                        ),
                        Tab(text: 'Images'),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.15,
                        ),
                      ],
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      _selectedTabIndex = index;
                    });
                  },
                ),
              ),
              pinned: true,
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController, // Provide the TabController here

          children: [
            ProfileDetails(),
            ProfileImages(),
          ],
        ),
      ),
    );
  }
}

class _MyTabBarDelegate extends SliverPersistentHeaderDelegate {
  _MyTabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: ColorValues.lightpink,
      child: tabBar,
    );
  }

  @override
  bool shouldRebuild(_MyTabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}

// import 'package:datingapp/const/Colors.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// import '../../Utils/Widgets/CustomWidgets.dart';
// import 'ProfileDetails.dart';
// import 'ProfileImages.dart';
//
// class MyProfile extends StatefulWidget {
//   MyProfile({Key? key}) : super(key: key);
//
//   @override
//   _MyProfileState createState() => _MyProfileState();
// }
//
// class _MyProfileState extends State<MyProfile> {
//   int _selectedTabIndex = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorValues.lightpink,
//       appBar: AppBar(
//         scrolledUnderElevation: 0,
//
//         elevation: 0,
//         excludeHeaderSemantics: false,
//         backgroundColor: ColorValues.lightpink,
//         leading: roundedBorder_button('assets/menu.svg', () {}),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(),
//             Text(
//               'My Profile',
//               style: TextStyle(
//                   color: ColorValues.grey,
//                   fontSize: 22,
//                   fontWeight: FontWeight.w700),
//             ),
//             roundedBorder_button('assets/edit.svg', () {}),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.03,
//             ),
//             Center(
//               child: Container(
//                 height: 95,
//                 width: 95,
//                 child: Stack(
//                   children: [
//                     CircularImage('assets/model.jpg', 95, 95),
//                     Align(
//                       alignment: Alignment.bottomRight,
//                       child: InkWell(
//                         onTap: () {},
//                         child: Container(
//                           height: 24,
//                           width: 24,
//                           decoration: BoxDecoration(
//                             color: ColorValues.pinkmain,
//                             shape: BoxShape.circle,
//                           ),
//                           child: Center(
//                             child: Icon(
//                               CupertinoIcons.camera_fill,
//                               size: 12,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.02,
//             ),
//             Text(
//               'Stella',
//               style: TextStyle(
//                   color: ColorValues.grey,
//                   fontWeight: FontWeight.w600,
//                   fontSize: 17),
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.01,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Transform.scale(
//                   scale: 1.3,
//                   child: SvgPicture.asset('assets/location.svg'),
//                 ),
//                 SizedBox(
//                   width: 5,
//                 ),
//                 Text(
//                   'France',
//                   style: TextStyle(color: ColorValues.grey, fontSize: 13),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.03,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       _selectedTabIndex = 0;
//                     });
//                   },
//                   child: Text(
//                     'Details',
//                     style: TextStyle(
//                         color: _selectedTabIndex == 0
//                             ? ColorValues.pinkmain
//                             : ColorValues.grey,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 17),
//                   ),
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.2,
//                 ),
//                 Container(
//                   height: 25,
//                   width: 3,
//                   color: ColorValues.grey,
//                 ),
//                 SizedBox(
//                   width: MediaQuery.of(context).size.width * 0.2,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {
//                       _selectedTabIndex = 1;
//                     });
//                   },
//                   child: Text(
//                     'Images',
//                     style: TextStyle(
//                         color: _selectedTabIndex == 1
//                             ? ColorValues.pinkmain
//                             : ColorValues.grey,
//                         fontWeight: FontWeight.w700,
//                         fontSize: 17),
//                   ),
//                 ),
//               ],
//             ),
//             Visibility(
//               visible: _selectedTabIndex == 0,
//               child: ProfileDetails(),
//             ),
//             Visibility(
//               visible: _selectedTabIndex == 1,
//               child: ProfileImages(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
