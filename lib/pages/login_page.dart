
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/common/common_styles.dart';
import 'package:school_management/pages/sub_login_pages/admin_login.dart';
import 'package:school_management/pages/sub_login_pages/student_login.dart';
import 'package:school_management/pages/teacher_dashboard/teachers_dashboard.dart';

class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();


}

class _LoginScreenState extends State<LoginScreen> {
  final colorizeColors = [
    Colors.blue,


    Colors.yellow,
    Colors.red,
    Colors.brown
  ];

  final colorizeColor = [

    Colors.purple,
    Colors.pink,
    Colors.yellow,
    Colors.red,

  ];
  final  colorizeTextStyle = TextStyle(
    fontSize: 26.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Montserrat"
  );
  final  colorizeTextStyles = GoogleFonts.pacifico(fontSize: 26);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white,
        child: Center(
        child: Column(children: [

          Stack(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(height: MediaQuery.of(context).size.height,
                width:MediaQuery.of(context).size.width,
                // color: Colors.tealAccent,
              // child: Image.asset("assets/login.png"),
                ),
            ),
            Positioned(top: 70,left: 10,
                child:
               Column(
                 children: [
                   AnimatedTextKit(animatedTexts: [
                     ColorizeAnimatedText("Welcome To,", textStyle:colorizeTextStyle , colors: colorizeColors)
                   ],
                     repeatForever: true,
                     totalRepeatCount: 6,
                     isRepeatingAnimation: true,),
                 // AnimatedTextKit(animatedTexts: [
                 //   ColorizeAnimatedText("Bishop Cotton High School", textStyle:colorizeTextStyle , colors: colorizeColor)
                 // ],
                 //   repeatForever: true,
                 //   totalRepeatCount: 6,
                 //   isRepeatingAnimation: true,),
               ],)

                ),
            Positioned(top: 260,left: 85,

                 child:

                 // AvatarGlow(
                 //   glowColor: Colors.red,
                 //   repeatPauseDuration: Duration(milliseconds: 200),
                 //
                 //   duration: Duration(milliseconds: 2000),
                 //   repeat: true,
                 //   showTwoGlows: true,
                 //   endRadius: 60.0,
                 //   child: CircleAvatar(
                 //     backgroundColor: Colors.pink[100],
                 //     child:AnimatedTextKit(animatedTexts: [
                 //         ColorizeAnimatedText("Login As ??", textStyle:colorizeTextStyle , colors: colorizeColors)
                 //       ],
                 //       isRepeatingAnimation: true,),
                 //
                 //       radius: 60.0,
                 //   ),
                 // ),
              // AnimatedTextKit(animatedTexts: [
              //     ColorizeAnimatedText("Login As ??", textStyle:colorizeTextStyle , colors: colorizeColors)
              //   ],
              //   isRepeatingAnimation: true,),
                // child:Text("Login As??",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)
                Image.asset("assets/login4.png",scale: 8,),
            ),

            Positioned(bottom: 210,left: 145,
                child: Text("Student",
                  style: CommonStyles.LoginText(),)
            ),
            Positioned(top: 210,left: 145,
                child: Text("Principal",
                  style: CommonStyles.LoginText(),)),



            Positioned(top: 285,left: 20,
                child: Container(
                  child: InkWell(onTap: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>TeachersDashBoard()));
                  },
                      child: Text("Teacher",style:  CommonStyles.LoginText(),)),)),

            Positioned(top: 285,right: 30,
                child: Container(
                  child: Text("Parent", style: CommonStyles.LoginText(),),)),
            Positioned(top: 410,left: 20,
                child: Container(height: 50,width: 100,alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20),
                  // BorderRadius.only(
                  //   topLeft: Radius.circular(20),
                  //     bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20),),
                    color: Colors.pink
                      ),
                  child: InkWell(onTap: (){Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>StudentLoginScreen()));
                  },
                      child: Text("Admin",style:  CommonStyles.LoginText(),)),)),
            Positioned(top: 420,right: 15,
                child: Container(
                  child: Text("     Non-\n  Teaching", style: CommonStyles.LoginText(),),)),
          ],)
        ],),
        ),
      ),

    );

  }
}