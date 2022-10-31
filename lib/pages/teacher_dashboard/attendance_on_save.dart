import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:school_management/common/text_form_field.dart';

class AttendanceOnSave extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Color(0xffc20e84),
      title: Text("",),
      titleSpacing: 35,
      automaticallyImplyLeading: false,
      elevation: 0.0,
    ),
      backgroundColor: Color(0xffc20e84),
      body: Container(height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration:BoxDecoration(color: Colors.white,
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,
              Colors.white,

              Colors.pink

            ],
                begin: Alignment.topCenter,end: Alignment.bottomCenter),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))),
        child: Column(children: [
          SizedBox(height: 70,),
          Text("Attendance",style: GoogleFonts.calistoga(fontSize: 25,color: Colors.pink,letterSpacing: 0.9),),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 35),
            child: Center(
              child: CircularPercentIndicator(radius: 80,
                lineWidth:15 ,
                animation: true,
                center: Text("Percent",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink,fontSize: 22.0),

                ),circularStrokeCap: CircularStrokeCap.round,
                progressColor: Colors.pink,
              ),
            ),
          ),

          Row(
            children: [

              CommonSquareList(hintText: "24", hintsmalltext: "Present"),
              CommonSquareList(hintText: "4", hintsmalltext: "Absents"),
              CommonSquareList(hintText: "1", hintsmalltext: "Leave"),
            ],
          )
        ],),),

    );

  }
}


// CircularPercentIndicator(
// radius: 120.0,
// lineWidth: 13.0,
// animation: true,
// percent: 0.7,
// center: new Text(
// "70.0%",
// style:
// new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
// ),
// footer: new Text(
// "Sales this week",
// style:
// new TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
// ),
// circularStrokeCap: CircularStrokeCap.round,
// progressColor: Colors.purple,
// ),