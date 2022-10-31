import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/dashboard_drawer.dart';

import 'admin_main_menu.dart';



class AdminDashBoard extends StatefulWidget{
  @override
  State<AdminDashBoard> createState() => _AdminDashBoardState();
}

class _AdminDashBoardState extends State<AdminDashBoard> {

  List<IconData> dashBoardicon =[
    Icons.school,

    Icons.library_books,
    Icons.present_to_all,
    // Icons.home_work_outlined,
    Icons.timer,
    Icons.menu_book_sharp,
    Icons.photo,
    // Icons.card_membership,
    // Icons.notes_sharp,
    Icons.event_note,
    Icons.data_thresholding_rounded,
    Icons.settings
  ];

  List <String> dashboardcontent = [
    "Student",
    "Teacher",
    "Library",
    "Attendance",
    "TimeTable",
    // "Communication",
    "Exam",
    "Gallery",
    // "ReportCard",
    "Event",
    "Data Base",
    "Settings"
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
          appBar: AppBar(
            // backgroundColor: Color(0xFF440836),
            title: RichText(
              text: TextSpan(
                // text: 'Hello ',
                // style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(text: '', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                  TextSpan(text: ' Admin',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
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


            ),

                      ),
          drawer: AdminMainMenu(),


          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
              // constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.99),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(20),topRight:Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
                child: Column(children: [
                  SizedBox(height: 15,),
                  GridView.builder(shrinkWrap: true,
                      primary: false,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 15,
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 60,
                          childAspectRatio: 2/9
                      ),itemCount:
                      dashBoardicon.length,
                      itemBuilder: (BuildContext ctx ,index){
                        return Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(colors: [Color(0xFFa20b6a),Color(0xFF500a3f),

                          ],
                              begin: Alignment.topLeft,end: Alignment.bottomCenter),

                        ),
                          child: InkWell(
                            child: Row(children: [
                              // ImageIcon(AssetImage("${dashboardimage[index]}",),size: 50,color: Colors.green,),

                              // Image.asset("${dashboardimage[index]}",height: 90,width: 160,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(width: 90,
                                  child: Container(child: Text(dashboardcontent[index],style: TextStyle(
                                      fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
                                ),
                              ),


                              Icon(dashBoardicon[index],size: 40,color: Colors.yellow.shade50,),
                            ],),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Container()));
                            },
                          ),
                        );
                      }),







                ],),
              ),
            ),));


  }
}




