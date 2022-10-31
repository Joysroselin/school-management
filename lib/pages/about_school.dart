import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSchool extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,elevation: 0.0,titleSpacing: 0,
       title: Text("Welcome to St. Johns site",style: GoogleFonts.calistoga(fontSize: 25,color: Colors.pink,letterSpacing: 0.9),),
        leading: Icon(Icons.arrow_back,color: Colors.black,),
      ),

      body: SingleChildScrollView(child: Container(width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 50,),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
                child: CarouselSlider(
                    options: CarouselOptions( height: 130,
                      aspectRatio: 9/9,
                      viewportFraction: 0.9,
                      // clipBehavior: Clip.antiAlias,

                      autoPlayAnimationDuration: Duration(milliseconds: 700),
                      // initialPage: 0,
                      enableInfiniteScroll: true,
                      // reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),

                      autoPlayCurve: Curves.easeInOut,
                      enlargeCenterPage: true,

                      scrollDirection: Axis.horizontal,),
                    items:[

                      Image.asset("assets/johnsb.jpg",),
                      Image.asset("assets/jhonsa.jpg",),

                    ]

                )),
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Affiliated to State/CBSE/ICSE Boards",
              style: TextStyle(fontWeight: FontWeight.bold),),
          ),







          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Text("St. John’s High School made its humble beginning in the year January 1974. SJHS is a co-educational school. "
                "It is recognized private unaided institution run by the "
                "East West Group of Institutions. The school follows state, ICSE and CBSE. We offer quality, ""academically sound education right from K.G classes to Std.10.""SJHS did provide and will provide the most modern facilities in imparting quality education to the students."
         " Keeping in mind the changing times and technology driven world, we have blended tradition and modernity in the best proportion at SJHS. We believe in an integrated curriculum and lay stress on the holistic development ofevery child who is admitted in SJHS. True to the name of the school, East West we believe that we have done it magically in myriad ways."
              "It is our mission to impart quality education in a Disciplined, Determined, Dedicated way."),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/schban.png"),
          ),
          SizedBox(height: 20,),
          Container(height: 150,color: Colors.grey.withOpacity(0.4),)

        ],
      ),),),
    );
  }
}