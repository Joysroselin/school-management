import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/common/common_widgets.dart';

class StudentProfileScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body:  Container(width: MediaQuery.of(context).size.width,

        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [

          Padding(
            padding: const EdgeInsets.only(top: 50,left: 15),
            child: Text("Profile",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.2,
                fontSize: 22,color:Color(0xFF122599),
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat')
            )),
          ),

// Image.asset("assets/profbaground.png"),
   Column(children: [
     Padding(
       padding: const EdgeInsets.only(top: 20,bottom: 0),
       child: Container(height: 100,
         decoration: BoxDecoration(color:  Colors.white,
             // image: DecorationImage(image: AssetImage("assets/profbaground.png")),
             shape: BoxShape.circle,border: Border.all(color: Colors.teal.shade100,)
         ),

       ),
     ),
     SizedBox(height: 10),
     Text("joys Roselin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

     // Text("+91 9449625560"),
   ],),
              SizedBox(height: 20,),
          Container(
            child: Column(children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                child: Container(
                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column( mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                 Row(children: [Icon(Icons.app_registration,color: Colors.orange,),
                 Text(" Student Number",style: TextStyle(fontWeight: FontWeight.w500),)],),
                  Text("19pc200001",style: TextStyle(color: Colors.grey),)
                ],),),
              ),
SizedBox(width: 20,),
              Container(
                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Column(children: [
                  Row(children: [Icon(Icons.phone,color: Colors.green,),
                    Text("Phone Number",style: TextStyle(fontWeight: FontWeight.w500))],),
                  Text("9449625560",style: TextStyle(color: Colors.grey))
                ],),)
            ],),



          ],),),
            CommonProfileRow(maintext: "Class and Section", subtext: "8th Standrard    'A'", icon: Icons.school),
            CommonProfileRow(maintext: "Father Name", subtext: "Arron", icon: Icons.person_outline),
              CommonProfileRow(maintext: "Email",
                  subtext: "joysroselin@gmail.com", icon: Icons.mail_outline_outlined),

              CommonProfileRow(maintext: "Address", subtext: "G-36 'E' 1st cross street chennai\n TamilNadu-5600035", icon: Icons.location_on_sharp),
          // Row(children: [Icon(Icons.email_outlined,color: Colors.yellow,),
          //   Text("Email",style: TextStyle(fontWeight: FontWeight.w500),),Text("joysroselin@gmail.com")],)

Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 120),
                 child: InkWell(onTap: (){
                   // Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmDetails()));
                 },


                     child: Container(  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                         gradient: LinearGradient(colors: [

                           Colors.pink,
                           Color(0xFFa20b6a),

                           // Color(0xFF1c041c),
                           // Colors.white
                         ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
child: Row(children: [
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: Icon(Icons.logout,color: Colors.blue.shade900,),
  ),
  Text('LOGOUT',style: TextStyle(color: Colors.white),),
],),
                       // child: ListTile(
                       //   leading: Icon(Icons.logout,color: Colors.blue.shade900,),
                       //   title: Text('LOGOUT',style: TextStyle(color: Colors.white),),
                       // ),
                     ),


                   ),
                 ),



          // Padding(
          //   padding: const EdgeInsets.only(left: 17,right: 0,top: 5),
          //   child: ClayContainer(height: 50,
          //     borderRadius: 10,
          //     spread: 0.5,
          //     depth: 0,
          //     width: double.infinity,
          //     curveType: CurveType.concave,
          //     color: Colors.white,
          //
          //     child: Text("Enrollment no: 123434343",style: GoogleFonts.montserrat(textStyle: TextStyle(letterSpacing: 0.3,
          //         fontSize: 14,color: Colors.black,
          //         fontWeight: FontWeight.bold,
          //         fontFamily: 'Montserrat')
          //     )),),
          // ),

         // Padding(
         //    padding: const EdgeInsets.only(top: 20,right: 85,left: 85),
         //    child: InkWell(onTap: (){
         //      // Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmDetails()));
         //    },
         //
         //
         //        child: ListTile(
         //          leading: Icon(Icons.logout,color: Colors.red,),
         //          title: Text('LOGOUT'),
         //        ),
         //
         //
         //      ),
         //    ),


        ])),



    );
  }
}