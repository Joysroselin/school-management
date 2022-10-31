// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SchoolGallery extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../common/details_page.dart';


List<ImageDetails> _images = [
  ImageDetails(
      imagePath: 'assets/johnsb.jpg',

      photographer: 'Martin Andres',
      title: 'School Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),
  ImageDetails(
      imagePath: 'assets/basketball.png',

      photographer: 'Abraham Costa',
      title: 'Basket Ball Event',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/arobic.png',

      photographer: 'HemPrasad',
      title: 'Independence Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/img.png',

      photographer: 'Prashanth',
      title: 'Sports Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/culture.png',

      photographer: 'joyce',
      title: 'Culture Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/johnsb.jpg',

      photographer: 'Shalini',
      title: 'School Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/johnsb.jpg',

      photographer: 'Ramchandran',
      title: 'School Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/johnsb.jpg',

      photographer: 'Harish',
      title: 'School Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),


  ImageDetails(
      imagePath: 'assets/basketball.png',

      photographer: 'Abraham Costa',
      title: 'Basket Ball Event',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/arobic.png',

      photographer: 'HemPrasad',
      title: 'Independence Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/img.png',

      photographer: 'Prashanth',
      title: 'Sports Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/culture.png',

      photographer: 'joyce',
      title: 'Culture Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),

  ImageDetails(
      imagePath: 'assets/johnsb.jpg',

      photographer: 'Megha',
      title: 'School Day',
      details:
      'This image was taken in the year 1999 during the occassion of aunnal Sports event which was held at chennai. ' ),


];

class SchoolGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFFa20b6a),
      body: Container(
        decoration: BoxDecoration(color: Colors.yellow,
            image: DecorationImage(image: AssetImage("assets/johnsb.jpg"),scale: 10,fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              // Text(
              //   'Gallery',
              //   style: TextStyle(
              //     fontSize: 25,
              //     fontWeight: FontWeight.w600,
              //     color: Colors.white,
              //   ),
              //   textAlign: TextAlign.center,
              // ),
              // SizedBox(
              //   height: 40,
              // ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: GridView.builder(primary: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                imagePath: _images[index].imagePath,
                                title: _images[index].title,
                                photographer: _images[index].photographer,

                                details: _images[index].details,
                                index: index,
                              ),
                            ),
                          );
                        },
                        child: Hero(
                          tag: 'logo$index',
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage(_images[index].imagePath),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: _images.length,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;

  final String photographer;
  final String title;
  final String details;
  ImageDetails({
    required this.imagePath,

    required this.photographer,
    required this.title,
    required this.details,
  });
}