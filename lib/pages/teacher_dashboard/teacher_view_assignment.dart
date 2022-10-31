import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/pages/teacher_dashboard/assignment_upload.dart';

class TeacherViewAssignment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(appBar:
    AppBar(backgroundColor: Color(0xffc20e84),title: Text("Assignment"),
    actions: [IconButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>AssignmentUpload()) );
    }, icon: Icon(Icons.upload))],),
      backgroundColor: Colors.white,
      body:SingleChildScrollView(child: Container(child:
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 0,vertical: 20),
           child: Padding(
             padding: const EdgeInsets.all(2),
             child: Column(children: [
               Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Container(alignment: Alignment.topLeft,margin: EdgeInsets.all(0.4),
                         child: Text("Class : 1st standard",style: TextStyle(color: Colors.grey,fontSize: 18,fontWeight: FontWeight.bold),)),
                   ),
                 ],
               ),
               // Row(
               //   children: [
               //     SizedBox(width: 20,),
               //     Text("Class :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
               //     Text("1st Standard")
               //   ],
               // ),


               Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [

                   SizedBox(
                     child: Card(child:
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(height: 85,
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                           Container(height: 30,width: 50,
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue.withOpacity(0.1)),
                               child: Icon(Icons.download,color: Colors.blue,)),
                           Text("127",style: TextStyle(fontSize: 21,fontWeight:
                           FontWeight.bold),),
                           Text("Received",style:
                           TextStyle(color: Colors.grey),)

                         ],),
                       ),
                     ),),
                   ),
                   // VerticalDivider(thickness: 1,),
                   SizedBox(
                     child: Card(child:
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(height: 85,
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                           Container(height: 30,width: 50,
                               decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.orange.withOpacity(0.1)),
                               child: Icon(Icons.download,color: Colors.orange,)),

                           Text("127",style: TextStyle(fontSize: 22,fontWeight:
                           FontWeight.bold),),
                           Text("pending",style:
                           TextStyle(color: Colors.grey),)

                         ],),
                       ),
                     ),),
                   ),
                   SizedBox(
                     child: Card(child:
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(height: 85,
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             Container(height: 30,width: 50,
                                 decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green.withOpacity(0.1)),
                                 child: Icon(Icons.incomplete_circle,color: Colors.green,)),

                             Text("17",style: TextStyle(fontSize: 22,fontWeight:
                             FontWeight.bold),),
                             Text("Approved",style:
                             TextStyle(color: Colors.grey),)

                           ],),
                       ),
                     ),),
                   ),
                   SizedBox(width: 70,
                     child: Card(child:
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(height: 85,
                         child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             Container(height: 30,width: 50,
                                 decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red.withOpacity(0.1)),
                                 child: Icon(Icons.dangerous_outlined,color: Colors.red,)),

                             Text("50",style: TextStyle(fontSize: 22,fontWeight:
                             FontWeight.bold),),
                             Text("rejected",style:
                             TextStyle(color: Colors.grey),)

                           ],),
                       ),
                     ),),
                   ),




                 ],
               ),
             ],),
           ),
         ),
          // Row(
          //   children: [
          //     Text("Standard"),
          //   ],
          // ),


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
                      SizedBox(width: 170,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Joys roselin",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                              // SizedBox(height: 2,),
                              Text("Enroll No : 17800A",style: TextStyle(color: Colors.grey),),


                            ],),
                        ),
                      ),


                      // Row(children: [
                      //   Container(height: 28,width: 28,alignment: Alignment.center,
                      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
                      //     child: Text("P"),), SizedBox(width: 5,),
                      //   Container(height: 28,width: 28,alignment: Alignment.center,
                      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
                      //     child: Text("A"),), SizedBox(width: 5,),
                      //   Container(height: 28,width: 28,alignment: Alignment.center,
                      //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),border: Border.all()),
                      //     child: Text("L"),)
                      // ],),
                      Row(
                        children: [
                          Icon(Icons.download_outlined),
                          Text("",style: TextStyle(color:Color(0xffc20e84) ),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18,horizontal: 15),
                        child: Column(
                           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("Accept",style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500),),
                          SizedBox(height: 5,),
                            Text("Reject",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w500),),

                          ],),
                      )
                    ],),);

              }),
        ],),)),
    );
  }
}