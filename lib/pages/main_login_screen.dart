import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/admin/admin_dashboard.dart';
import 'package:school_management/pages/sub_login_pages/student_login.dart';
import 'package:school_management/pages/teacher_dashboard/teachers_dashboard.dart';

import '../common/common_styles.dart';

class MainLogin extends StatefulWidget{
  @override
  State<MainLogin> createState() => _MainLoginState();
}

class _MainLoginState extends State<MainLogin> {
  final colorizeColors = [
    Color(0xffc20e84),


    Colors.yellow,
    Colors.red,
    Colors.blue.shade900
  ];

  final colorizeColor = [

    Colors.purple,
    Colors.pink,
    Colors.yellow,
    Colors.red,

  ];
  final  colorizeTextStyles = GoogleFonts.sniglet(fontSize: 26);
  final  colorizeTextStyle = TextStyle(
      fontSize: 26.0,
      fontWeight: FontWeight.bold,
      fontFamily: "Montserrat"
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          //   decoration: BoxDecoration(gradient: LinearGradient(colors: [
          //     Colors.blue.shade900,
          //     Colors.green
          //   ])),
            width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 7,right: 5),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 60,),
            AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Welcome To,", textStyle:colorizeTextStyle , colors: colorizeColors)
            ],
              repeatForever: true,
              totalRepeatCount: 6,
              isRepeatingAnimation: true,),
            AnimatedTextKit(animatedTexts: [
              ColorizeAnimatedText("Bishop Cotton High School", textStyle:colorizeTextStyle , colors: colorizeColor)
            ],
              repeatForever: true,
              totalRepeatCount: 6,
              isRepeatingAnimation: true,),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Image.asset("assets/toppers.png"),
              ),

              SizedBox(height: 50,),
            Center(
              child: Container(
                // decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),

                child:TextButton( onPressed:(){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>AdminDashBoard()));
                },
                    child: Text("Admin",style:  CommonStyles.LoginText(),)),),
            ),
            SizedBox(
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Container(
                      // decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),
                    child: TextButton( onPressed: (){Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>TeachersDashBoard()));
                    },
                        child: Text("Teacher",style:  CommonStyles.LoginText(),)),),
                SizedBox(width: 20,),
                  Container(height: 250,width: 200,
                  decoration: BoxDecoration(image:
                DecorationImage(image: AssetImage("assets/login4.png")),),)
                ],
              ),
            ),
            SizedBox(height: 10,),Center(
              child: Container(
                // decoration: BoxDecoration(color: Colors.pink,borderRadius: BorderRadius.circular(10)),

                  child: TextButton( onPressed: (){Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>StudentLoginScreen()));
                },
                    child: Text("Student",style:  CommonStyles.LoginText(),)),),
            ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(alignment: Alignment.topRight,height: 60,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                  Text("Cultural Activities",style: TextStyle(color: Colors.blue,letterSpacing: 0.9,decoration: TextDecoration.underline),),
                  Text("Swimming",style:
                  TextStyle(color: Colors.blue,letterSpacing: 0.9,decoration: TextDecoration.underline),),

                    Text("Extra Curicular",style: TextStyle(color: Colors.blue,letterSpacing: 0.9,decoration:
                    TextDecoration.underline),),

                  ],),),
              )


          ],),
        ),),
      ),
    );
  }
}