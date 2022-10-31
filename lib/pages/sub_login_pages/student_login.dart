import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/pages/student_dashboard/dash_board.dart';
import 'package:school_management/pages/sub_login_pages/stu_reg.dart';

import '../../common/text_form_field.dart';

class StudentLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: SingleChildScrollView(child: Container(height: MediaQuery.of(context).size.height,
    //     width:MediaQuery.of(context).size.width,
    //     decoration: BoxDecoration(image: DecorationImage(image:
    //     AssetImage("assets/stulogimg.png"),fit: BoxFit.fill)),
    //
    //     child: Column(children: [
    //       Padding(
    //         padding: const EdgeInsets.only(right: 80,top: 140,),
    //         // child: Container(color: Color(0XFF33E9ED),
    //         //     child: Text(" Welcome You Trader!!!",style: CommonStyles.Bluelargetext(),)),
    //       ),
    //       SizedBox(height: 10,),
    //
    //       SizedBox(width: 320,
    //         child: Container(
    //           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),
    //               border: Border.all(color: Color(0xFF94C120),style: BorderStyle.solid),),
    //           child: Padding(
    //             padding: const EdgeInsets.only(top: 10,bottom: 10),
    //             child: Column(children: [
    //               // Text("Now, it's time to set up \n       your Profile !",style: CommonStyles.profText(),),
    //               Container(height: 90,
    //
    //                 decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: Colors.black),color: Colors.white,
    //                     image: DecorationImage(image: AssetImage("assets/studentsm.png"
    //                     ))),),
    //
    //               Padding(
    //                 padding: const EdgeInsets.only(top: 30),
    //                 child: ClayTextFormField(
    //                   iconData: Icons.person,
    //                   hintText: 'Name.',
    //
    //                 ),
    //               ),
    //
    //               SizedBox(height: 5,),
    //               ClayTextFormField(iconData: Icons.mail,
    //                 hintText: 'Email.',),
    //
    //               SizedBox(height: 5,),
    //               ClayTextFormField(iconData: Icons.phone_android_rounded,
    //                 hintText: 'Phone No',),
    //
    //
    //               Padding(
    //                 padding: const EdgeInsets.only(left: 32,right: 32,top: 10),
    //                 child: ClayContainer(borderRadius: 10,
    //                   spread: 2,
    //                   depth: 50,
    //                   width: double.infinity,
    //                   curveType: CurveType.concave,
    //                   color: Color(0xFF94C120),
    //
    //                   child: TextButton(onPressed: (){
    //                     Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDashBoard()));
    //                   },
    //                     child: Text("Continue",style: TextStyle(fontSize: 20,color: Colors.blue.shade900),),
    //                 ),
    //               ),
    //
    //               )],),
    //           ),),
    //       ),
    //
    //
    //     ],),
    //   ),),
    //
    // );

    return Scaffold(

      body: SingleChildScrollView(
        child: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
          // Colors.yellow.shade100,
          Colors.pinkAccent,
          Colors.pink,


        ],begin: Alignment.topLeft,end: Alignment.bottomRight)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 160,),
              Text("Welcome!",style: GoogleFonts.calistoga(fontSize: 25,color: Colors.white,letterSpacing: 0.9),),
              SizedBox(height: 5,),
              Text("Student",style: GoogleFonts.arbutus(fontSize: 25,color: Colors.white,letterSpacing: 0.9),),
              SizedBox(height: 45,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.3),borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                      // enabledBorder: OutlineInputBorder(borderSide: BorderSide(),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(),
                      // ),
                      border: InputBorder.none,
                      hintText: "username"
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Container(
                  decoration: BoxDecoration(color: Colors.white.withOpacity(0.3),borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                        // enabledBorder: OutlineInputBorder(borderSide: BorderSide(),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(),
                        // ),
                        border: InputBorder.none,
                        hintText: "username"
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                child: Container(decoration: BoxDecoration(color: Colors.white.withOpacity(0.8),borderRadius: BorderRadius.circular(5)),width: 330,
                    child: TextButton(onPressed: (){}, child:Text("Login",style: TextStyle(color:  Color(0xffc20e84),fontSize: 18),))),
              ),
              Text("Forgot password?",style: TextStyle(letterSpacing: 0.9,color: Colors.white.withOpacity(0.9)),),
              SizedBox(height: 100,),
              Text("Need an account?",style: TextStyle(letterSpacing: 1,color: Color(0xFF500a3f),),),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentRegister()));
              },
                  child: Text("Register",style: TextStyle(color: Colors.white,decoration: TextDecoration.underline),))
            ],
          ),
        ),
      ),
    );
  }
}
