import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/dashboard_drawer.dart';
import 'package:school_management/pages/teacher_dashboard/teachers_main_menu.dart';

import '../attend.dart';

class TeachersDashBoard extends StatefulWidget{
  @override
  State<TeachersDashBoard> createState() => _TeachersDashBoardState();
}

class _TeachersDashBoardState extends State<TeachersDashBoard> {

  List<IconData> dashBoardicon =[
    Icons.library_books,
    Icons.present_to_all,
    Icons.home_work_outlined,
    Icons.timer,
    Icons.menu_book_sharp,
    Icons.photo,
    Icons.card_membership,
    Icons.notes_sharp,
    Icons.event_note
  ];

  List <String> dashboardcontent = [
    "Library",
    "Attendance",
    "Homework",
    "TimeTable",
    // "Communication",
    "Exam",
    "Gallery",
    "ReportCard",
    "Teacher Notes",
    "Event"
  ];
  List<String> dashboardimage=[
    "assets/librarysm.png",
    "assets/attendsm.png",
    "assets/homeworksm.png",
    "assets/timetablesm.png",
    "assets/examsm.png",
    "assets/librarysm.png",
    "assets/reportsm.png",
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
          appBar: PreferredSize( preferredSize: Size.fromHeight(160.0),
            child: AppBar(
              // backgroundColor: Color(0xFF440836),
              title: RichText(
                text: TextSpan(
                  // text: 'Hello ',
                  // style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(text: 'Mrs.', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                    TextSpan(text: ' Archana',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                  ],
                ),
              ),
              elevation: 0.0,
              flexibleSpace: Container(decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xFFa20b6a),Color(0xFF500a3f),
                  // Color(0xFF1c041c),
                  // Colors.white
                ],
                    begin: Alignment.topLeft,end: Alignment.bottomCenter),),

                child: Row(children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60,left: 10),
                      child: Container(height: 80,width: 200,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),
                      child: Text("Notice Board",style: TextStyle(color: Colors.grey),),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60,bottom: 40),
                    child: Container(height: 70,width: 90,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,
                          // image: DecorationImage(
                          //   image: AssetImage("assets/studentsm.png",),)
                      ),),
                  ),


                ],),
              ),

              //+++++++++++++++++++++++++++++++++++++++++++++++++===
              // actions: [
              //   Padding(
              //     padding: const EdgeInsets.only(right: 1),
              //     child: Row(children: [
              //       Container(height: 100,width: 130,
              //        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),)
              //     ],),
              //   )
              // ],

              //++++++++++++++++++++++++++++++++++++++++++++++==
              // leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu),
              // ),
              //   actions: [
              //     Padding(
              //       padding: const EdgeInsets.only(right: 10),
              //       child:
              //        IconButton(onPressed: (){}, icon: Icon(Icons.person_outlined,size: 35,)
              // //   Container(height: 70,
              // //     decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
              //  ),
              //     )]
            )
            ,),
          drawer: TeachersMainMenu(),


          backgroundColor: Color(0xFF440836),
          body: Stack(children: [SingleChildScrollView(
            child: Container(height: MediaQuery.of(context).size.height,
              // constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.99),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),topRight:Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Column(children: [
                    SizedBox(height: 15,),
                    GridView.builder(shrinkWrap: true,
                        primary: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: 15,
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 62,
                            childAspectRatio: 2/9
                        ),itemCount:
                        dashBoardicon.length,
                        itemBuilder: (BuildContext ctx ,index){
                          return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                            gradient: LinearGradient(colors: [Color(0xFFa20b6a),Color(0xFF500a3f),
                              // Color(0xFF1c041c),
                              // Colors.white
                            ],
                                begin: Alignment.topLeft,end: Alignment.bottomCenter),
                            //     boxShadow: [BoxShadow(
                            //   color: Colors.blue,
                            //   offset: Offset(0.5,0),
                            //       blurRadius: 0.5
                            //
                            // ),
                            //       BoxShadow(
                            //           color: Colors.blue,
                            //           offset: Offset(-0.5,1),
                            //           spreadRadius: 1,
                            //         blurRadius: 0.5
                            //       )]

                          ),
                            child: InkWell(
                              child: Row(children: [
                                // ImageIcon(AssetImage("${dashboardimage[index]}",),size: 50,color: Colors.green,),

                                // Image.asset("${dashboardimage[index]}",height: 90,width: 160,),

                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25),
                                  child: SizedBox(width: 190,
                                    child: Container(child: Text(dashboardcontent[index],style: TextStyle(
                                        fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
                                  ),
                                ),


                                Icon(dashBoardicon[index],size: 40,color: Colors.yellow.shade50,),
                              ],),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendanceCategory()));
                              },
                            ),
                          );
                        }),







                  ],),
                ),
              ),
            ),),


            // Positioned(top: 80,left: 30,
            //   child: Container(
            //    height: 90,width: 200,
            //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            //     color: Colors.white,),),
            // ),
            // Positioned(top: 30,right: 10,
            //   child: Container(
            //     height: 70,width: 70,
            //     decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(
            //         image: AssetImage("assets/studentsm.png",),
            //          fit: BoxFit.fitWidth
            //     ),
            //       color: Colors.white,),),
            // ),

          ] ));


  }
}





// Container(height: 100,
// child: ListView(
// scrollDirection: Axis.horizontal,
// children: [
// Container(child: Text("Wonderful")),
// Container(child: Text("Wonderful"),),
// SizedBox(width: 30,),
// Container(child: Text("Wonderful"),),
// Container(child: Text("Wonderful")),
// Container(child: Text("Wonderful"),),
// Container(child: Text("Wonderful"),)
// ],),
// )