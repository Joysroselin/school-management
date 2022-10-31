import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/common/text_form_field.dart';
import 'package:school_management/pages/student_dashboard/dash_board.dart';

class StudentRegister extends StatefulWidget{
  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  var _result;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(child: Container(child: Center(
        child: Column(children: [
          SizedBox(height: 60,),
          Text("Register now",style: GoogleFonts.calistoga(fontSize: 25,color: Colors.pink,letterSpacing: 1,),),
          SizedBox(height: 20,),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          //   child: Container(height: 45,
          //     child: TextFormField(showCursor: false,
          //       decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink,),borderRadius: BorderRadius.circular(15)
          //       ),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.pink, ),
          //           borderRadius: BorderRadius.circular(15)),
          //         hintText: "Name",
          //         prefixIcon: Icon(Icons.person),
          //
          //
          //       ),
          //     ),
          //   ),
          // ),

         CommonTextFormField(hintText: "", iconData: Icons.person,nametext: "Name",),
          CommonTextFormField(hintText: "", iconData: Icons.email, nametext: "Email"),
          CommonTextFormField(
              hintText: ",", iconData: Icons.person_outline, nametext: "Father Name"),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          //   child: Container(
          //     child: TextFormField(
          //       decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink),borderRadius: BorderRadius.circular(15)
          //       ),focusedBorder: OutlineInputBorder(borderSide: BorderSide(color:Colors.pink ),
          //           borderRadius: BorderRadius.circular(15)),
          //         hintText: "Adress",
          //         prefixIcon: Icon(Icons.person,color: Colors.pink,),
          //
          //
          //       ),
          //
          //       maxLines: 2,
          //
          //     ),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text("Address",style: TextStyle(fontWeight: FontWeight.w500),),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(maxLines: 3,
                    decoration: InputDecoration(prefixIcon: Icon(Icons.person),
                        // enabledBorder: OutlineInputBorder(borderSide: BorderSide(),
                        // focusedBorder: OutlineInputBorder(
                        //   borderSide: BorderSide(),
                        // ),
                        border: InputBorder.none,
                        // hintText: "username"
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 15,bottom: 10),
                  child: Container(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Gender",style: TextStyle(fontWeight: FontWeight.w500),),

                    RadioListTile(
                        title: const Text('Male'),
                        value: 1,
                        groupValue: _result,
                        onChanged: (value) {
                          setState(() {
                            _result = value;
                          });
                        }),
                    // Divider(thickness: 2,),
                    RadioListTile(
                        title: const Text('Female'),
                        value: 2,
                        groupValue: _result,
                        onChanged: (value) {
                          setState(() {
                            _result = value;
                          });
                        }),

                  ],),),
                ),

                Row(children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Class",style: TextStyle(fontWeight: FontWeight.w500),),
                      Container(width: 100,height: 43,
                          color: Colors.grey.withOpacity(0.2),
                          child:TextField(textAlign: TextAlign.center,
                            decoration: InputDecoration(border: InputBorder.none,),)),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Section",style: TextStyle(fontWeight: FontWeight.w500),),
                      Container(width: 100,height: 43,
                          color: Colors.grey.withOpacity(0.2),
                          child: TextField(textAlign: TextAlign.center,decoration: InputDecoration(border: InputBorder.none,),)),
                    ],
                  ),
                ],),


                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentDashBoard()));
                  },child:Container(alignment: Alignment.center,
                      decoration: BoxDecoration(color: Colors.pink.withOpacity(0.8),borderRadius: BorderRadius.circular(5)),width: 330,height: 45,
                      child: Text("Login",style: TextStyle(color:  Colors.white,fontSize: 18),))),
                ),
                SizedBox(height: 40,),
                Center(child: Text("Already have an account?",style: TextStyle(letterSpacing: 0.75,color: Color(0xFF500a3f),),)),
                Center(child: Text("Login",style: TextStyle(letterSpacing: 0.9,color: Colors.pink.withOpacity(0.9)),),)
              ],
            ),
          ),





        ],),
      ),),),
    );
  }
}