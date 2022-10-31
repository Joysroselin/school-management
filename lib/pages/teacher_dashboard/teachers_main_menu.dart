import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/about_school.dart';
import 'package:school_management/pages/attenance.dart';


import 'package:school_management/pages/student_dashboard/stu_homework.dart';
import 'package:school_management/pages/student_dashboard/stu_time_table.dart';
import 'package:school_management/pages/student_dashboard/stu_view_attendance.dart';
import 'package:school_management/pages/teacher_dashboard/event_holidays.dart';
import 'package:school_management/pages/teacher_dashboard/exam_schedule.dart';
import 'package:school_management/pages/teacher_dashboard/select_class.dart';
import 'package:school_management/pages/teacher_dashboard/students_leave_report.dart';
import 'package:school_management/pages/teacher_dashboard/teacher_class_schedule.dart';
import 'package:school_management/pages/teacher_dashboard/teacher_view_assignment.dart';
import 'package:school_management/pages/teacher_dashboard/teachers_dashboard.dart';
import 'package:school_management/pages/teacher_dashboard/upload_hw.dart';

import '../../admin/gallery.dart';
import '../date_ranger.dart';
import '../e_library/library.dart';
import '../test_mark_uploader.dart';
import 'apply_for_leave.dart';
import 'assignment_overviews.dart';



class TeachersMainMenu extends StatelessWidget {
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
                      Text("Mrs.Archana",style: TextStyle(color: Colors.white,fontSize: 17),)
                    ],
                  ),),
              ),
              ListTile(title: Text("Assignment",),
                leading: Icon(Icons.assessment),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherViewAssignment()));},),
              ListTile(title: Text("Attendance",),
                leading: Icon(Icons.book_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentAttendance()));},),

              ListTile(title: Text("TimeTable",),
                leading: Icon(Icons.schedule),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentTimeTable()));},),

              ListTile(title: Text("HomeWork",),
                leading: Icon(Icons.home_work_outlined),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SelectClass()));},),
              ListTile(title: Text("Exam Schedule",),
                leading: Icon(Icons.schedule_send_outlined),),
              ListTile(title: Text("Report card",),
                leading: Icon(Icons.card_membership_outlined),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>TestMarkUpload()));},),
              ListTile(title: Text("Apply For leave",),
                leading: Icon(Icons.holiday_village_rounded),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>Leave()));},),

              ListTile(title: Text("Student Leave Report",),
                leading: Icon(Icons.report_sharp),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>StudentLeaveReport()));},),
              ListTile(title: Text("Library",),
                leading: Icon(Icons.library_books),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>TeacherClassSchedule()));},),

              ListTile(title: Text("Exam Schedule",),
                leading: Icon(Icons.schedule),
                onTap: (){Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>ExamSchedule()));},),

              ListTile(title: Text("Gallery",),
                leading: Icon(Icons.camera), onTap: ()
                {Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>DateRange()));},),
              ListTile(title: Text("Event",),
                leading: Icon(Icons.event_note), onTap: ()
                {Navigator.push(context, MaterialPageRoute(builder:
                    (context)=>EventHolidays()));},),

              ListTile(title: Text("Hostel",),
                leading: Icon(Icons.holiday_village_sharp),),
              ListTile(title: Text("About School",),

                leading: Icon(Icons.school),onTap: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>AboutSchool()));},),






            ],
          ),
        ),
      ),
    );
  }
}
