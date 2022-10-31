import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TeachersList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(
      backgroundColor: Color(0xffc20e84),
        title: Text("DataBase"),
      ),


      body:SingleChildScrollView(child:
      Container( child:
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   children: [
          //     SizedBox(width: 20,),
          //     Padding(
          //       padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          //       child: Text("Teachers DataBase",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          //     ),
          //     // Text("1st Standard")
          //   ],
          // ),
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
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffc20e84).withOpacity(0.2),),),
                      ),
                      SizedBox(width: 180,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Archana",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              // SizedBox(height: 2,),
                              Text("Teacher Id : 1",style: TextStyle(color: Colors.grey),),


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
                      Text("view more",style: TextStyle(color:Color(0xffc20e84) ),)
                    ],),);

              }),
        ],),)),
    );
  }
}