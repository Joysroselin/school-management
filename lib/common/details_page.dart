import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String photographer;

  final String details;
  final int index;
  DetailsPage(
      {required this.imagePath,
        required this.title,
        required this.photographer,

        required this.details,
        required this.index});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[

               Hero(
                tag: 'logo$index',
                child: Container(height: 500,
                  decoration: BoxDecoration(color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                       fit: BoxFit.cover,
                    ),

                  ),
                   // child: Image.asset(imagePath,height: 500,width: 400,),
                ),
              ),

            Container(
              // height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.blue.shade900,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'By $photographer',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          details,
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Row(
                  //   children: <Widget>[
                  //     Expanded(
                  //       child: TextButton(
                  //         onPressed: () {
                  //           Navigator.pop(context);
                  //         },
                  //         // padding: EdgeInsets.symmetric(vertical: 15),
                  //         // color: Colors.lightBlueAccent,
                  //         child: Text(
                  //           'Back',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 15,
                  //     ),
                  //     Expanded(
                  //       child: TextButton(
                  //         onPressed: () {},
                  //
                  //         child: Text(
                  //           'Buy',
                  //           style: TextStyle(
                  //             color: Colors.white,
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





