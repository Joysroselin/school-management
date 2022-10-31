import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentLeaveReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(),
      body: SingleChildScrollView(child: Container(child:
        Column(children: [
          SizedBox(height: 20,),
          Container(child: ListView.builder(shrinkWrap: true,
              primary: false,
              itemCount: 5,itemExtent: 180,
              itemBuilder: (context,index){return
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
            child: Card(elevation: 8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("From    A.Joys Roselin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.orange.shade50,
                        ),child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text("pending..",
                            style: TextStyle(color: Colors.orange.shade900),
                          ),
                        ),)
                      ],
                    ),


                    Text("Class : 7th std 'A' Section ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,),),
SizedBox(height: 5,),

                    Text("Sufferring From Cold",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.grey),),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Icon(Icons.holiday_village_sharp,color: Colors.purple,),SizedBox(width: 10,),
                      Text("Leave From : "),
                      Text("11-10-2022 to 15-10-2022 .",style: TextStyle(fontWeight: FontWeight.bold),),

                    ],),
                    Expanded(child: Text("Iam sufferring from common cold ................................. so please kindly oblidge.")),
 Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
   children: [
   Icon(Icons.approval,color: Colors.green,),
   Icon(Icons.disabled_by_default_outlined,color: Colors.red,)
 ],)
                  ],),
              ),
            ),
          );
          }),)
        ],),),),
    );
  }
}