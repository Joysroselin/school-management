import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/dashboard_drawer.dart';
import 'package:school_management/pages/student_dashboard/stu_profile.dart';

class StudentDashBoard extends StatefulWidget{
  @override
  State<StudentDashBoard> createState() => _StudentDashBoardState();
}

class _StudentDashBoardState extends State<StudentDashBoard> {

  List<IconData> dashBoardicon =[
    Icons.library_books,
    Icons.present_to_all,
    Icons.home_work_outlined,
    Icons.timer,
    Icons.menu_book_sharp,
    Icons.photo,
    Icons.card_membership,
    Icons.library_books,
    Icons.present_to_all,
    Icons.home_work_outlined,
    Icons.timer,
    Icons.menu_book_sharp,
    Icons.photo,
    Icons.card_membership,
    Icons.library_books,
    Icons.present_to_all,
    Icons.home_work_outlined,
    Icons.timer,
    Icons.menu_book_sharp,
    Icons.photo,
    Icons.card_membership,
    Icons.library_books,
    Icons.present_to_all,
    Icons.home_work_outlined,
    Icons.timer,
    Icons.menu_book_sharp,
    Icons.photo,
    Icons.card_membership
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
    "Exam",
    "Gallery",
    "ReportCard",
    "Exam",
    "Gallery",
    "ReportCard",
    "Exam",
    "Gallery",
    "ReportCard",
    "Exam",
    "Gallery",
    "ReportCard",
    "Exam",
    "Gallery",
    "ReportCard",
    "Exam",
    "Gallery",
    "ReportCard",
    "Exam",
    "Gallery",
    "ReportCard"
  ];
  List<String> dashboardimage=[

    "assets/culture.png",
    "assets/homeworksm.png",


  ];

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
          appBar: PreferredSize(preferredSize: Size.fromHeight(60),
            child: AppBar(
               backgroundColor: Color(0XFF94C120),
              title: Text("DashBoard"),
              titleSpacing: 0,
              elevation: 0.0,
             flexibleSpace:Container(alignment: Alignment.bottomLeft,
               margin: EdgeInsets.only(top: 10,bottom: 1,left: 35),
               child: Text("  St.John's School",style: TextStyle(
                   fontWeight: FontWeight.w500,
                   fontSize: 21,color: Colors.white),),)
              //         Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
    // gradient: LinearGradient(colors: [Color(0xFFa20b6a),Color(0xFF500a3f),
    // // Color(0xFF1c041c),
    // // Colors.white
    // ],
    // begin: Alignment.topLeft,end: Alignment.bottomCenter),),
    //
    // child: Row(children: [
    //             Center(
    //               child: Padding(
    //                 padding: const EdgeInsets.only(top: 60,left: 10),
    //                 child: Container(height: 80,width: 200,
    //                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white),),
    //               ),
    //             ),
    //             InkWell(onTap: (){
    //               Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentProfileScreen()));
    //             },
    //               child: Padding(
    //                 padding: const EdgeInsets.only(left: 60,bottom: 40),
    //                 child: Container(height: 70,width: 90,
    //                   decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,
    //                     image: DecorationImage(
    //                              image: AssetImage("assets/studentsm.png",),)),),
    //               ),
    //             ),
    //
    //
    //           ],),
    //         ),

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
                ),
          ),
drawer: DashboardDrawer(),


           // backgroundColor: Color(0xFF440836),
        body: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            // constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.99),
            // decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
            //   topLeft:Radius.circular(20),topRight:Radius.circular(20))
            // ),
          child: Column(children: [
            Container(height: 150,
              // color: Colors.pink,
            child: CarouselSlider(items:dashboardimage.map((e){
              return Builder(builder: (BuildContext context){
                return Container(child: Image.asset(e,),);
              });
            }).toList(), options: CarouselOptions(height: 150,autoPlay: true),
            ),),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
              child: GridView.builder(
                   shrinkWrap: true,
                   primary: false,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 15,
                crossAxisCount: 4,
                mainAxisSpacing: 5,
                mainAxisExtent: 80,
                childAspectRatio: 2/9
              ),itemCount:
                  dashBoardicon.length,
                  itemBuilder: (BuildContext ctx ,index){
                return
                  Container(decoration: BoxDecoration(borderRadius:
                  BorderRadius.circular(5),
                    // gradient: LinearGradient(colors:

                    //   Color(0xFFa20b6a),Color(0xFF500a3f),
                    //    // Color(0xFF1c041c),
                    //   // Colors.white
                    // ],
                    // begin: Alignment.topLeft,end: Alignment.bottomCenter),
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
                  child: Column(children: [SizedBox(height: 15,),
                    // ImageIcon(AssetImage("${dashboardimage[index]}",),size: 50,color: Colors.green,),
Icon(dashBoardicon[index],size: 40,color: Colors.blue.shade900,),
                    // Image.asset("${dashboardimage[index]}",height: 90,width: 160,),
                     SizedBox(height: 5,),
                     Container(child: Text(dashboardcontent[index],
                       style: TextStyle(
                         fontSize: 14,fontWeight: FontWeight.bold,
                           color: Colors.black,letterSpacing: 0.5),)),
                  ],),
                );
              }),
            ),







          ],),
        ),));


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