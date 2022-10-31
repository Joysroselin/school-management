import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/student_dashboard/stu_view_attendance.dart';
import 'package:school_management/pages/teacher_dashboard/attendance_on_save.dart';

class StudentAttendance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Attendance"),
    centerTitle: true,
      flexibleSpace: Container( decoration: BoxDecoration(
          gradient: LinearGradient(colors: [

            Color(0xffc20e84),
            Color(0xFFa20b6a),
            Color(0xFF500a3f),
            // Color(0xFF1c041c),
            // Colors.white
          ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
      ),
    ),
    body:SingleChildScrollView(child:
    Container(child: Column(children: [
      Container(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Row(children: [
          SizedBox(width: 90,
            child: Column(
              children: [
                Text("Class",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                SizedBox(height: 5,),
                Text(" 1st" " Standard")
              ],
            ),
          ),

          SizedBox(width: 70,
            child: Column(
              children: [
                Text("Section",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                SizedBox(height: 5,),
                Text("A"),

              ],
            ),

          ),


          SizedBox(width: 100,
            child: Column(
              children: [
                Text("Date",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                SizedBox(height: 5,),
                Text(" 29-9-22")
              ],
            ),
          ),

          SizedBox(width: 60,
            child: Column(
              children: [
                Text("Total",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                SizedBox(height: 5,),
                Text("30")
              ],
            ),
          ),
        ],),
      ),),
      Divider(thickness: 2,color: Color(0xffc20e84).withOpacity(0.4),),

      // Container(height: 80,
      //   // color: Colors.pink,
      //   child: Row(
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     // mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(height: 60,width: 70,
      //           decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffc20e84),),),
      //       ),
      //       SizedBox(width: 150,
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
      //           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text("Joys roselin",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
      //               // SizedBox(height: 2,),
      //               Text("Roll no : 1",style: TextStyle(color: Colors.grey),)
      //             ],),
      //         ),
      //       ),
      //       Row(children: [
      //         Container(height: 28,width: 28,alignment: Alignment.center,
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
      //           child: Text("P"),), SizedBox(width: 5,),
      //         Container(height: 28,width: 28,alignment: Alignment.center,
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
      //           child: Text("A"),), SizedBox(width: 5,),
      //         Container(height: 28,width: 28,alignment: Alignment.center,
      //           decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
      //           child: Text("L"),)
      //       ],)
      //     ],),),


      SafeArea(child:
      ListView.builder(itemCount: 8,
          scrollDirection: Axis.vertical,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context,index ){
            return  Container(height: 80,
              // color: Colors.pink,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(height: 60,width: 70,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffc20e84),),),
                  ),
                  SizedBox(width: 150,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Joys roselin",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                          // SizedBox(height: 2,),
                          Text("Roll no : 1",style: TextStyle(color: Colors.grey),)
                        ],),
                    ),
                  ),
                  Row(children: [
                    Container(height: 28,width: 28,alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
                      child: Text("P"),), SizedBox(width: 5,),
                    Container(height: 28,width: 28,alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
                      child: Text("A"),), SizedBox(width: 5,),
                    Container(height: 28,width: 28,alignment: Alignment.center,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
                      child: Text("L"),)
                  ],)
                ],),);

          }),),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
        child:  Container(height: 40,width: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(colors: [

                Color(0xffc20e84),
                Color(0xFFa20b6a),
                Color(0xFF500a3f),
                // Color(0xFF1c041c),
                // Colors.white
              ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
          child: TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendanceOnSave()));
          }, child: Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,),
              child: Icon(Icons.save,color: Colors.yellow.shade50,),
            ),
            Text("Save",style: TextStyle(color: Colors.white,fontSize: 16,),)
          ],)),
        ),
      ),




    ])
    ))
      );

  }
}