import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/admin/student_db_list.dart';
import 'package:school_management/admin/teachers_db.dart';
import 'package:school_management/pages/attenance.dart';


import 'package:school_management/pages/student_dashboard/stu_homework.dart';
import 'package:school_management/pages/student_dashboard/stu_time_table.dart';
import 'package:school_management/pages/student_dashboard/stu_view_attendance.dart';
import 'package:school_management/pages/teacher_dashboard/teachers_dashboard.dart';

import '../pages/e_library/library.dart';
import 'admin_view_attendance.dart';
import 'event_marker.dart';
import 'gallery.dart';

class AdminMainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          child: ListView(
            children: [
              Container(decoration: BoxDecoration(

                  gradient: LinearGradient(colors: [
                    Color(0xffc20e84),
                    Color(0xFFa20b6a),

                    Color(0xFF500a3f),

                    // Colors.white
                  ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
                child: DrawerHeader(
                  child:  Column(
                    children: [
                      Container(
                        height: 70,
                        decoration:
                        BoxDecoration(shape: BoxShape.circle, color: Colors.yellow.shade50,

                        ),

                      ),
                      SizedBox(height: 10,),
                      Text("Harish",style: TextStyle(color: Colors.white,fontSize: 17),)
                    ],
                  ),),
              ),
              ListTile(title: Text("Student DataBase",),
                leading: Icon(Icons.data_thresholding_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentList()));},),

              ListTile(title: Text("Teachers Database",),
                leading: Icon(Icons.data_thresholding_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TeachersList()));},),



              ListTile(title: Text("Attendance",),
                leading: Icon(Icons.book_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminViewAttendance()));},),

              ListTile(title: Text("Class TimeTable",),
                leading: Icon(Icons.schedule),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentTimeTable()));},),

               ListTile(title: Text("Exam Schedule",),
                leading: Icon(Icons.schedule_send_outlined),),
              ListTile(title: Text("E-Library",),
                leading: Icon(Icons.dashboard),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()));},),
              ListTile(title: Text("Event",),
                leading: Icon(Icons.event_outlined),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AdminEventMarker()));},),

              ListTile(title: Text("Fees",),
                leading: Icon(Icons.money),),
              ListTile(title: Text("Gallery",),
                leading: Icon(Icons.camera), onTap: ()
                {Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>SchoolGallery()));},),

              ListTile(title: Text("Hostel",),
                leading: Icon(Icons.holiday_village_sharp),),
              ListTile(title: Text("Settings",),
                leading: Icon(Icons.settings),),






            ],
          ),
        ),
      ),
    );
  }
}
