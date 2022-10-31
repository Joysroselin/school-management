import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common/common_widgets.dart';

class StudentTimeTable extends StatefulWidget{
  @override
  State<StudentTimeTable> createState() => _StudentTimeTableState();
}

class _StudentTimeTableState extends State<StudentTimeTable> {
  List<String> weeks=[
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Color(0xFF500a3f),
      title: Text("TimeTable"),),
      body: SingleChildScrollView(child: Container(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Column(children: [
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 5),
          //   child: Container(alignment: Alignment.topLeft,
          //       child: Text("Monday",style: TextStyle(color:  Color(0xFF500a3f),fontWeight: FontWeight.bold,fontSize: 16),)),
          // ),
          // SizedBox(height: 10,),
          // Container(height: 45,
          //   color: Color(0xFF500a3f),
          //   child:
          //   Row(children: [
          //     SizedBox(width: 20,),
          //     Text("Subject",style: TextStyle(color: Colors.white),),
          //     SizedBox(width: 80,),
          //     Text("Teacher",style: TextStyle(color: Colors.white),),
          //     SizedBox(width: 80,),
          //     Text("Timings",style: TextStyle(color: Colors.white),),
          //
          //   ],),),
          // SizedBox(height: 10,),
          //
          // Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 0),
          //   child: Container(height: 40,decoration: BoxDecoration(border: Border.all(color: Color(0xFF500a3f),)),
          //   child:
          //   Row(children: [
          //     SizedBox(width: 20,),
          //     Text("Subject",
          //       // style: TextStyle(color: Color(0xFF500a3f))
          //       ),
          //     SizedBox(width: 50,),
          //     VerticalDivider(thickness: 1,color: Colors.black,),
          //     SizedBox(width: 10,),
          //     Text("Teacher",),
          //     SizedBox(width: 40,),
          //     VerticalDivider(thickness: 1,color: Colors.black,),
          //     SizedBox(width: 10,),
          //     Text("Timings",),
          //
          //   ],),),
          // ),
          // SizedBox(height: 2,),
          // Container(height: 40,decoration: BoxDecoration(border: Border.all(color: Color(0xFF500a3f),)),
          //   child:
          //   Row(children: [
          //     SizedBox(width: 20,),
          //     Text("Subject",
          //       // style: TextStyle(color: Color(0xFF500a3f))
          //     ),
          //     SizedBox(width: 50,),
          //     VerticalDivider(thickness: 1,color: Colors.black,),
          //     SizedBox(width: 10,),
          //     Text("Teacher",),
          //     SizedBox(width: 40,),
          //     VerticalDivider(thickness: 1,color: Colors.black,),
          //     SizedBox(width: 10,),
          //     Text("Timings",),
          //
          //   ],),),
          // SizedBox(height: 2),
          // CommonTimeTableLay(firsttext: "Subject", secondtext: "Teacher", thirdtext: "Timing"),

         Container(child:  GridView.builder(shrinkWrap: true,
             scrollDirection: Axis.vertical,
             primary: false,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                 mainAxisExtent: 550,crossAxisSpacing: 2,mainAxisSpacing: 2), itemCount: weeks.length,itemBuilder: (BuildContext ctx,index){
               return Column(children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 5),
                   child: Container(alignment: Alignment.topLeft,
                       child: Text("${weeks[index]}",style: TextStyle(color:  Color(0xFF500a3f),fontWeight: FontWeight.bold,fontSize: 16),)),
                 ),
                 SizedBox(height: 10,),
                 Container(height: 45,
                   color: Color(0xFF500a3f),
                   child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10,),
               child: Row(children: [

               SizedBox(width: 85,
               child: Text("Subject",
                   style: TextStyle(color:Colors.white)
               ),
               ),

               VerticalDivider(thickness: 1,color: Colors.white,),

               SizedBox(width: 90,
               child: Text("Teacher", style: TextStyle(color:Colors.white))),

               VerticalDivider(thickness: 1,color: Colors.white,),

               SizedBox(width: 50,
               child: Text("Timings", style: TextStyle(color:Colors.white))),

               ],),
               ),

                   ),
                 SizedBox(height: 10,),

                 Container(
                     // color: Colors.yellow,
                     child: GridView.builder(shrinkWrap: true,
                         scrollDirection: Axis.vertical,
                         primary: false,
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,
                             mainAxisExtent: 40,crossAxisSpacing: 2,mainAxisSpacing: 2), itemCount: 10,itemBuilder: (BuildContext ctx,index){
                           return CommonTimeTableLay(firsttext: "Subject", secondtext: "Teacher", thirdtext: "Timing");
                         })),

               ],

               );
             }),),



        ],),
      ),),),
    );

  }
}