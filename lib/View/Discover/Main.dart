// import 'dart:async';
// import 'dart:developer';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_card_swiper/flutter_card_swiper.dart';
//
//
// class ExploreMainScreen extends StatefulWidget {
//   ExploreMainScreen({Key? key}) : super(key: key);
//
//   @override
//   State<ExploreMainScreen> createState() => _ExploreMainScreenState();
// }
//
// class _ExploreMainScreenState extends State<ExploreMainScreen> {
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     setState(() {});
//     // locationController.getAddress();
//   }
//
//   CardSwiperController _controllerCards = CardSwiperController();
//
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         height: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Flexible(
//               child: StreamBuilder<List<Usuario>?>(
//                 stream: listenToDataChanges(),
//                 builder: (context, snapshot) {
//                   if (snapshot.hasError) {
//                     return Text('Error: ${snapshot.error}');
//                   } else if (!snapshot.hasData) {
//                     return Center(
//                       child: Text('No hay candidatos disponibles.'),
//                     );
//                   } else {
//                     final candidates = snapshot.data;
//                     if (candidates == null || candidates.isEmpty) {
//                       // Display a message or widget when there are no candidates
//                       return Center(
//                         child: Text('No hay candidatos disponibles.'),
//                       );
//                     } else {
//                       return CardSwiper(
//                         controller: _controllerCards,
//                         cardsCount: candidates.length,
//                         onSwipe: (previousIndex, currentIndex, direction) {
//                           print(currentIndex);
//                           _onSwipe(
//                               currentIndex ?? 0,
//                               candidates[currentIndex ?? 0],
//                               direction,
//                               context);
//                           return true;
//                         },
//                         numberOfCardsDisplayed: candidates.length,
//                         onEnd: () {
//                           debugPrint('All cards have been shown');
//                         },
//                         padding: const EdgeInsets.symmetric(horizontal: 20),
//                         cardBuilder: (context, index) => ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: ImageConInformacion(candidates[index]),
//                         ),
//                       );
//                     }
//                   }
//                 },
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     _controllerCards.swipeLeft();
//                   },
//                   child: Icon(
//                     Icons.close_rounded,
//                     color: Get.theme.primaryColorDark,
//                     size: 30,
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     shape: CircleBorder(),
//                     padding: EdgeInsets.all(15),
//                     elevation: 10.0,
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     _controllerCards.swipeTop();
//                   },
//                   child: Icon(
//                     LineIcons.heartAlt,
//                     size: 50,
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     shape: CircleBorder(),
//                     padding: EdgeInsets.all(15),
//                     elevation: 10.0,
//                   ),
//                 ),
//                 // ElevatedButton(
//                 //   onPressed: () {
//                 //     _controllerCards.swipeRight();
//                 //   },
//                 //   child: Icon(
//                 //     Icons.star_rate_rounded,
//                 //     color: Color(0xFF8A2387),
//                 //     size: 30,
//                 //   ),
//                 //   style: ElevatedButton.styleFrom(
//                 //     shape: CircleBorder(),
//                 //     padding: EdgeInsets.all(15),
//                 //     elevation: 10.0,
//                 //     backgroundColor: Colors.white,
//                 //   ),
//                 // ),
//               ],
//             ),
//             SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<bool> _onSwipe(int currentIndex, Usuario candidate,
//       CardSwiperDirection direction, BuildContext context) async {
//     print(
//         "currentIndex: $currentIndex, candidate: ${candidate.userId}, direction: $direction");
//
//     if (direction == CardSwiperDirection.right ||
//         direction == CardSwiperDirection.top ||
//         direction == CardSwiperDirection.bottom) {
//       await FirebaseFirestore.instance
//           .collection("users")
//           .doc(user?.uid)
//           .update({
//         'Liked': FieldValue.arrayUnion([candidate.userId]),
//       });
//       await FirebaseFirestore.instance
//           .collection("users")
//           .doc(candidate.userId)
//           .update({
//         'LikeMe': FieldValue.arrayUnion([user?.uid]),
//       });
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('Me gusta'),
//       ));
//       print(direction);
//     } else if (direction == CardSwiperDirection.left) {
//       await FirebaseFirestore.instance
//           .collection("users")
//           .doc(user?.uid)
//           .update({
//         'Disliked': FieldValue.arrayUnion([candidate.userId]),
//       });
//       await FirebaseFirestore.instance
//           .collection("users")
//           .doc(user?.uid)
//           .update({
//         'Liked': FieldValue.arrayRemove([candidate.userId]),
//       });
//       // Show a SnackBar
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: Text('No me gusta'),
//       ));
//     }
//
//     return true;
//   }
// }
//
// class ImageConInformacion extends StatefulWidget {
//   final Usuario candidate;
//
//   ImageConInformacion(
//       this.candidate, {
//         Key? key,
//       }) : super(key: key);
//
//   @override
//   State<ImageConInformacion> createState() => _ImageConInformacionState();
// }
//
// class _ImageConInformacionState extends State<ImageConInformacion> {
//   int _indexFoto = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     String _foto = widget.candidate.fotos[_indexFoto];
//     return Stack(
//       children: [
//         CachedNetworkImage(
//           imageUrl: _foto,
//           placeholder: (context, url) => Container(
//               color: Colors.white,
//               child: Center(
//                   child: CircularProgressIndicator(
//                     color: Get.theme.primaryColor,
//                   ))),
//           errorWidget: (context, url, error) => Icon(Icons.error),
//           fit: BoxFit.cover,
//           width: double.infinity,
//           height: double.infinity,
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Flexible(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () {
//                   _indexFoto == 0
//                       ? _indexFoto = widget.candidate.fotos.length - 1
//                       : _indexFoto--;
//                   _foto = widget.candidate.fotos[_indexFoto];
//                   Get.forceAppUpdate();
//                 },
//                 child: Container(
//                   color: Colors.red.withOpacity(0.0),
//                 ),
//               ),
//             ),
//             Flexible(
//               flex: 1,
//               child: GestureDetector(
//                 onTap: () {
//                   _indexFoto == widget.candidate.fotos.length - 1
//                       ? _indexFoto = 0
//                       : _indexFoto++;
//                   _foto = widget.candidate.fotos[_indexFoto];
//                   Get.forceAppUpdate();
//                 },
//                 child: Container(
//                   color: Colors.blue.withOpacity(0.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         Container(
//           padding: const EdgeInsets.all(15),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(15),
//                 decoration: BoxDecoration(
//                   color: Colors.white54,
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Row(
//                   children: [
//                     Icon(
//                       LineIcons.mapMarker,
//                       color: Colors.black,
//                       size: 15,
//                     ),
//                     const SizedBox(width: 5),
//                     Text(
//                       widget.candidate.provincia.toString(),
//                       style: TextStyle(color: Colors.black),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             SizedBox(),
//             GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => Fitness(
//                         candidate: widget.candidate,
//                       )),
//                 );
//               },
//               child: Container(
//                 padding: const EdgeInsets.all(15),
//                 color: Colors.black12,
//                 width: double.infinity,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       widget.candidate.nombre.toString() +
//                           ', ${calculoEdad(widget.candidate.fechaNacimiento ?? DateTime.now())}',
//                       style: TextStyle(
//                         fontFamily: 'Swis721',
//                         fontSize: 32,
//                         fontWeight: FontWeight.w800,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text(
//                       widget.candidate.profesion.toString() ?? "",
//                       style: TextStyle(
//                         fontFamily: 'Swis721',
//                         fontSize: 16,
//                         fontWeight: FontWeight.w100,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       widget.candidate.intereses?.join(', ').toString() ?? "",
//                       style: TextStyle(
//                         fontFamily: 'Swis721',
//                         fontSize: 16,
//                         fontWeight: FontWeight.w100,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ],
//     );
//   }
// }