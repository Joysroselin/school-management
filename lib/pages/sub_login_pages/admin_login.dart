import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/common/text_form_field.dart';
import 'package:school_management/pages/student_dashboard/dash_board.dart';
import 'package:school_management/pages/dashboard_drawer.dart';

class AdminloginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: PreferredSize(preferredSize: Size.fromHeight(160),child: AppBar(elevation: 0.0,
   ),),drawer: DashboardDrawer(),
     body: SingleChildScrollView(
       child: Container(height: MediaQuery.of(context).size.height,

         child: Column(children: [
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 15),
             child:Container(
               decoration: BoxDecoration(color: Colors.white,
               //     boxShadow: [
               //   BoxShadow(offset: Offset(3,3),
               //     blurRadius: 1,
               //     spreadRadius: 1,
               //     color: Colors.blue.shade900,)
               // ],
                   borderRadius: BorderRadius.circular(10)),

               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20),
                 child: Column(
                   children: [
                     Image.asset("assets/adminimg.png",height: 100,width: 120,),
                     Text("ADMIN"),
                     SizedBox(height: 40,),
                     // CommonTextFormField(hintText: "Name", iconData: Icons.person),
                     // CommonTextFormField(hintText: "password", iconData: Icons.remove_red_eye_rounded),
                     CommonButton(hinttext: "login")
                   ],
                 ),
               ),
             ),
           )
         ],),
       )),
   );

  }
}