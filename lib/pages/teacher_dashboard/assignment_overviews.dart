import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignmentOverView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 150,),

            Text("OverView of Assignment"),
            Row(
              children: [

                SizedBox(width: 100,
                  child: Container(child:
                    Column(children: [
                      Container(height: 30,width: 50,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue.withOpacity(0.1)),
                          child: Icon(Icons.download,color: Colors.blue,)),
                      Text("127",style: TextStyle(fontSize: 21,fontWeight:
                      FontWeight.bold),),
                      Text("Received",style:
                      TextStyle(color: Colors.grey),)

                    ],),),
                ),
                VerticalDivider(thickness: 1,),
                SizedBox(width: 100,
                  child: Container(child:
                  Column(children: [
                    Icon(Icons.person),
                    Text("127",style: TextStyle(fontSize: 22,fontWeight:
                    FontWeight.bold),),
                    Text("Received",style:
                    TextStyle(color: Colors.grey),)

                  ],),),
                ),
                VerticalDivider(thickness: 1,),
                SizedBox(width: 100,
                  child: Container(child:
                  Column(children: [
                    Icon(Icons.person),
                    Text("127",style: TextStyle(fontSize: 22,fontWeight:
                    FontWeight.bold),),
                    Text("Received",style:
                    TextStyle(color: Colors.grey),)

                  ],),),
                ),


              ],
            ),
              Text("My Notes"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Container(
                  child: Card(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text("My Notes"),
                          Container(decoration: BoxDecoration(border: Border.all(color: Colors.blue.shade900)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 3),
                            child: Row(children: [
                              Icon(Icons.add,color: Colors.blue.shade900),
                              Text("Add Notes",style: TextStyle(color: Colors.blue.shade900),)
                            ],),
                          ),)
                        ],),
                      ),
                     Container(
                       child: ListView.builder(itemCount: 5,itemExtent: 60,shrinkWrap: true,
                         itemBuilder: (context, index){
                       return  Container(height: 100,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(bottom: 10),
                               child: Container(height: 40,width: 40,
                                 decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.lightGreenAccent.withOpacity(0.4),
                                 ),child:  Icon(Icons.note,color: Colors.blue.shade900,),),
                             ),
                             Column(
                               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text("Announcement for class 2nd",),
                                 SizedBox(width:200,
                                     child: Text("Regarding upcoming sports and cultural event.",style: TextStyle(color: Colors.grey),))
                               ],),
                             Icon(Icons.more_vert_outlined)
                           ],),
                       );
                     }),)
                    ],),
                  ),
                ),
              )
          ],),
        ),
      ),
    );
  }
}