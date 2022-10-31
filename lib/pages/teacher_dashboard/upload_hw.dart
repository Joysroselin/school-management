import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadHomeWork extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Homework"),actions: [IconButton(onPressed: (){}, icon: Icon(Icons.history_rounded))],
      flexibleSpace: Container(decoration: BoxDecoration(gradient: LinearGradient(colors: [
        // Color(0xFF500a3f),
        // Color(0xFF500a3f),
        // Color(0xFF1c041c),
        Color(0xFFa20b6a),Color(0xFF500a3f),
        // Colors.white
      ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),),
      elevation: 0.0,),
      body: SingleChildScrollView(child: Container(child: Column(children: [

        // Padding(
        //   padding: const EdgeInsets.only(top: 20,left: 5),
        //   child: Row(children: [Text("Class"),
        //     Text("1st"),
        //     Text("Subject"),
        //     Text("English")],),
        // ),
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
                            Text("Homework Date",style: TextStyle(fontWeight: FontWeight.w500),),SizedBox(height: 15,),
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