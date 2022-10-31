import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/about_school.dart';
import 'package:school_management/pages/attenance.dart';
import 'package:school_management/pages/student_dashboard/fees.dart';
import 'package:school_management/pages/student_dashboard/paid_fees.dart';


import 'package:school_management/pages/student_dashboard/stu_homework.dart';
import 'package:school_management/pages/student_dashboard/stu_report_card.dart';
import 'package:school_management/pages/student_dashboard/stu_time_table.dart';
import 'package:school_management/pages/student_dashboard/stu_view_attendance.dart';
import 'package:school_management/pages/teacher_dashboard/teachers_dashboard.dart';

import '../admin/gallery.dart';
import 'e_library/library.dart';

class DashboardDrawer extends StatelessWidget {
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
                        Text("Joys Roselin",style: TextStyle(color: Colors.white,fontSize: 17),)
                      ],
                    ),),
              ),
              ListTile(title: Text("Assignment",),
                leading: Icon(Icons.assessment),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Container()));},),
              ListTile(title: Text("Attendance",),
                leading: Icon(Icons.book_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentViewAttendance()));},),

              ListTile(title: Text("Class TimeTable",),
                  leading: Icon(Icons.schedule),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentTimeTable()));},),

              ListTile(title: Text("HomeWork",),
                leading: Icon(Icons.home_work_outlined),
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentHomework()));},),
              ListTile(title: Text("Exam Schedule",),
                leading: Icon(Icons.schedule_send_outlined),),
              ListTile(title: Text("E-Library",),
                leading: Icon(Icons.dashboard),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Library()));},),

              ListTile(title: Text("Fees",),
                leading: Icon(Icons.money),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PaidFees()));},),
              ListTile(title: Text("Result",),
                leading: Icon(Icons.star_outline_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentReportCard()));},),
              ListTile(title: Text("Gallery",),
                leading: Icon(Icons.camera), onTap: ()
                {Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>SchoolGallery()));},),
 ListTile(title: Text("Hostel",),
                leading: Icon(Icons.holiday_village_sharp),),
              ListTile(title: Text("About School",),
                leading: Icon(Icons.school),   onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutSchool()));},),






            ],
          ),
        ),
      ),
    );
  }
}
