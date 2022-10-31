import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AssignmentUpload extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(appBar: AppBar(title: Text("Upload Assignment"),
    backgroundColor:  Color(0xffc20e84),elevation: 0.0,),
      body: SingleChildScrollView(child: Container(width: MediaQuery.of(context).size.width,
        child: Column(children: [

        Padding(
          padding: const EdgeInsets.only(top: 20,left: 10),
          child: Row(children: [Text("Class    : ",style: TextStyle(fontWeight: FontWeight.w500),),
            Text("1st Standard"),
           ],),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10,top: 5),
          child: Row(children: [Text("Subject : ",style: TextStyle(fontWeight: FontWeight.w500),),
            Text("English"),
          ],),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: ClayContainer(
            child: Container(
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Column(
                  children: [


                    Row(children: [
                      SizedBox(width: 200,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15,),
                            Text("Subject",style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(height: 15,),
                            Text("Assignment ",style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(height: 15,),
                            Text("Assignment Date",style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(height: 15,),

                            Text("Submission Date",style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(height: 15,),
                            Text("Submission status",style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(height: 15,),

                          ],),
                      ),
                      // SizedBox(width: 100,),
                      SizedBox(width: 100,

                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 15,),
                            Text("English",),
                            SizedBox(height: 15,),
                            Text("FA 1",),
                            SizedBox(height: 15,),

                            Text("23-9-2022"),
                            SizedBox(height: 15,),
                            Text("25-9-2022"),
                             SizedBox(height: 15,),
                            Text("Pending""..."),
                            SizedBox(height: 15,),

                          ],),
                      ),
                    ],),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 90),
                          child: Container(height: 40,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [

                                  Color(0xffc20e84),
                                  Color(0xFFa20b6a),
                                  Color(0xFF500a3f),
                                  // Color(0xFF1c041c),
                                  // Colors.white
                                ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
                            child: TextButton(onPressed: (){}, child: Row(children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Icon(Icons.upload,color: Colors.white,),
                              ),
                              Text("Upload",style: TextStyle(color: Colors.white,fontSize: 16,),),
                              SizedBox(width: 10,)

                            ],)),
                          ),
                        ),

                        // Icon(Icons.send)
                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
        ),

      ],),),),

    );

  }
}