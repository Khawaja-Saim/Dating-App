import 'package:flutter/cupertino.dart';

class ProfileImages extends StatelessWidget {
   ProfileImages({Key? key}) : super(key: key);
   final List<String> imagePaths = [
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     'assets/model.jpg',
     // Add more image paths as needed
   ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15,right: 15,top: 20,bottom: MediaQuery.of(context).size.height*0.1),
      height: 120*imagePaths.length/2,
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Adjust the number of columns as needed
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 1

        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(imagePaths[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
