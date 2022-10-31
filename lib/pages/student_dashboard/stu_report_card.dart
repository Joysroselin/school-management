import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/common/common_widgets.dart';

class StudentReportCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Result"),backgroundColor: Color(0xFFa20b6a),),
     body: SingleChildScrollView(child: Container(width: MediaQuery.of(context).size.width,
        child: Column(children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClayContainer(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(child: Text("Mid Term Examination",style:
                      TextStyle(color:Color(0xFF500a3f),fontWeight: FontWeight.bold,fontSize: 19 ),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(children: [
                        SizedBox( width:50,child: Text("Name")),
                        Text(": "),
                        Text("Joys Roselin"),

                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(children: [
                        SizedBox( width:50,child: Text("Class")),
                        Text(": "),
                        Text("8th Standard "),

                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(children: [
                        SizedBox( width:50,child: Text("Section")),
                        Text(": "),
                        Text("'A' sec"),

                      ],),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: Color(0xFF500a3f))),
                        child: Column(
                          children: [
                            Container(
                              child: CommonReportRow(subject: "Subject", max: "Max", min: "Min", obtained: "Obtained"),
                            ),
                            CommonReportRow(subject: "English", max: "120", min: "45", obtained: "110"),
                            CommonReportRow(subject: "Tamil", max: "100", min: "35", obtained: "90"),
                            CommonReportRow(subject: "Hindi", max: "100", min: "35", obtained: "70"),
                            CommonReportRow(subject: "Science", max: "100", min: "35", obtained: "85"),
                            CommonReportRow(subject: "Social", max: "100", min: "35", obtained: "90"),
                            CommonReportRow(subject: "Maths", max: "100", min: "35", obtained: "80"),
                            // CommonReportRow(subject: "Total", max: "620", min: "220", obtained: "525"),
                            Container(height: 40,
                              child:

                              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(width: 80,child:  Text("Total",style: TextStyle(fontWeight: FontWeight.w500),),),
                                  VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                                  SizedBox(width: 50,child:  Text("620",style: TextStyle(fontWeight: FontWeight.w500)),),VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                                  SizedBox(width: 50,child:  Text("220",style: TextStyle(fontWeight: FontWeight.w500)),),VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                                  SizedBox(width: 70,child:  Text("525",style: TextStyle(fontWeight: FontWeight.w500)),),


                                ],),

                            ) // CommonReportRow(subject: "", max: "Max", min: "Min", obtained: "Obtained"),

                          ],
                        ),),
                    ),
                    // Container(
                    //   child: Row(children: [
                    //     SizedBox(width: 60,child: Text("Art"),),
                    //     VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                    //     SizedBox(width: 60,child: Text("Art"),),
                    //
                    //   ],),
                    // )
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                     child: Container(decoration: BoxDecoration(border: Border.all(color: Color(0xFF500a3f))),
                     child: Column(children: [
                       CommonReportRow(subject: "Drawing", max: "50", min: "15", obtained: "35"),
                       CommonReportRow(subject: "Physical Edu", max: "50", min: "15", obtained: "45"),
                       CommonReportRow(subject: "S.U.P.W", max: "50", min: "15", obtained: "35"),
                       Container(height: 40,
                         child:

                         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             SizedBox(width: 80,child:  Text("Total",style: TextStyle(fontWeight: FontWeight.w500),),),
                             VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                             SizedBox(width: 50,child:  Text("150",style: TextStyle(fontWeight: FontWeight.w500)),),VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                             SizedBox(width: 50,child:  Text("45",style: TextStyle(fontWeight: FontWeight.w500)),),VerticalDivider(thickness: 1.3,color: Color(0xFFa20b6a),),
                             SizedBox(width: 70,child:  Text("135",style: TextStyle(fontWeight: FontWeight.w500)),),


                           ],),

                       )

                     ],),),
                   ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: Row(
                        children: [
                          SizedBox(width: 180,),
                          Text("Percentage : "),
                          SizedBox(width: 5,),
                          Text("85%")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(
                        children: [
                          SizedBox(width: 180),
                          Text("Result : "),
                          SizedBox(width: 5,),
                          Text("Destinction")
                        ],
                      ),
                    ),
                    SizedBox(height: 35,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(child: Text("Signature of authority",style: TextStyle(color:Color(0xFF500a3f), ),),),
                            SizedBox(child: Text("Teacher Signature",style: TextStyle(color: Color(0xFF500a3f)),),)
                          ],
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),



        ],),
      ),),
    );
  }
}