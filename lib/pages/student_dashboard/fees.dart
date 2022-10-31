import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/admin/student_db_list.dart';
import 'package:school_management/pages/student_dashboard/paid_fees.dart';
import 'package:school_management/pages/sub_login_pages/student_login.dart';

class StudentFees extends StatefulWidget{
  @override
  State<StudentFees> createState() => _StudentFeesState();
}

class _StudentFeesState extends State<StudentFees>with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState(){
    super.initState();
    controller = TabController(vsync: this,length: 2);
    controller.addListener(() { setState(() {

    });});
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();

  }

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Color(0xFFa20b6a),
      title: Text("FEES"),
      bottom: TabBar(
        controller: controller,
      tabs: [
      SizedBox(height: 20,child: Text("Due")),
      Text("Paid")
    ],),),
        body: SafeArea(
          child: Column(children: [
      Expanded(
          child: TabBarView(controller: controller,
              children:[
                PaidFees(),
              StudentList()] ),
      ),
      // Container(color: Color(0xFFa20b6a),
      // child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text("Task"),
      //       Text("Time")
      //
      // ],),),

    ],),
        ));

  }
}