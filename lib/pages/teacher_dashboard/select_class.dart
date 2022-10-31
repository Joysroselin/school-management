import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_management/pages/teacher_dashboard/upload_hw.dart';

class SelectClass extends StatefulWidget{
  @override
  State<SelectClass> createState() => _SelectClassState();
}

class _SelectClassState extends State<SelectClass> {
  List<String> Standard =[
    "L.K.G",
    "U.K.G",
    "1st Std",
    "2nd Std",
    "3rd Std",
    "4th Std",
    "5th Std",
    "6th Std",
    "7th Std",
    "8th Std",
    "9th Std",
    "10th Std",
    "11th Std",
    "12th Std"

  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(width: MediaQuery.of(context).size.width,
            // // constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height*0.99),
            // decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(
            //     topLeft:Radius.circular(20),topRight:Radius.circular(20)
            // )
          // )
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
              child: Column(children: [
                SizedBox(height: 70,),
                Text("Select Class To Upload",style: GoogleFonts.calistoga(fontSize: 25,color: Colors.pink,letterSpacing: 0.9),),

                SizedBox(height: 15,),
                GridView.builder(shrinkWrap: true,
                    primary: false,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 15,
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 52,
                        childAspectRatio: 2/9
                    ),itemCount:
                    Standard.length,
                    itemBuilder: (BuildContext ctx ,index){
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(borderRadius:
                        BorderRadius.circular(5),color:Color(0xFFfffefe) ,

                          // gradient: LinearGradient(colors: [Color(0xFFa20b6a),
                          //   Color(0xFF500a3f),
                          //
                          // ],
                          //     begin: Alignment.topLeft,end: Alignment.bottomCenter),
boxShadow: [
  BoxShadow(offset: Offset(2,2),
  color: Colors.pink),
  BoxShadow(offset: Offset(-2,-1),
      color: Colors.pink)
]
                        ),
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: SizedBox(width: 190,
                                child: Container(alignment: Alignment.center,
                                    child: Text("${Standard[index]}",style: TextStyle(
                                    fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),)),
                              ),
                            ),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>UploadHomeWork()));
                            },
                          ),
                        ),
                      );
                    }),







              ],),
            ),
          ),)

    );
  }
}