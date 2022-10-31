import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/common/text_form_field.dart';

class AttendanceCategory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("Attendance"), flexibleSpace: Container(decoration: BoxDecoration(
    gradient: LinearGradient(colors: [Color(0xFFa20b6a),Color(0xFF500a3f),
    // Color(0xFF1c041c),
    // Colors.white
    ],
    begin: Alignment.topLeft,end: Alignment.bottomCenter),),)

    ),
    body: SingleChildScrollView(child: Container(
      child: Column(children: [
      SizedBox(height: 40,),
      Icon(Icons.bookmark_added_outlined,size: 45,),

      CommonList(hintText: "Mark Attendance", hintIcon: Icons.mark_chat_read_outlined),
      CommonList(hintText:"View Attendance" , hintIcon: Icons.view_agenda_outlined,),
      CommonList(hintText: "Update Attendance", hintIcon: Icons.update)
    ],),),),);
  }
}