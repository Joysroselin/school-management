import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/common/common_widgets.dart';

class PaidFees extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(elevation: 0.0,title: Text("Fees"),
      backgroundColor: Color(0xFFa20b6a),),
        body: SingleChildScrollView(child: Container(child: Column(children: [

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: ClayContainer(borderRadius: 15,color: Colors.white,
          child: Column(children: [
            Container(height: 45,  alignment: Alignment.center,
                 decoration: BoxDecoration( color: Color(0xFF500a3f),borderRadius: BorderRadius.only(
                     topRight: Radius.circular(5),
                     topLeft: Radius.circular(5)
                 )),


                child:Text("December",
                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0xFFa20b6a),
                ),),



                child: Column(
                  children: [

                    // Container(height: 40,
                    //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //     children: [
                    //       SizedBox(width: 130,child:  Text("Payment status"),),
                    //       VerticalDivider(thickness:1.3,color: Colors.black38,),
                    //       SizedBox(width: 130,child:  Text("Pending.."),),
                    //     ],),
                    // ),
                    // Divider(thickness: 2,),
                    CommonFeeRow(maintext: "Monthly Fee", subtext: "750"),
                    CommonFeeRow(maintext: "Computer Fee", subtext: "450"),
                    CommonFeeRow(maintext: "Lab Fee", subtext: "550"),
                    CommonFeeRow(maintext: "Transport Fee", subtext: "700"),
                    // Divider(thickness: 1,color:Color(0xFFa20b6a),),

                    CommonFeeRow(maintext: "Payment Status", subtext: "Pending..."),
                    Container(decoration: BoxDecoration(borderRadius: 
                    BorderRadius.only(bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),),color: Colors.grey.withOpacity(0.4),),
                        child: CommonFeeRow(maintext: "Total Fee", subtext: "₹ 23,000")),
                    // SizedBox(height: 5,),













                    // CommonFeeRow(maintext: "Admission", subtext: "₹2500"),

                    // Container(height: 44,width: double.infinity,
                    //     decoration: BoxDecoration(
                    //         // border: Border.all(),
                    //         color: Colors.pink.shade200
                    //     ),
                    //     alignment: Alignment.center,
                    //     child: Text("Proceed to pay"))

                  ],
                ),
              ),
            ),

//             Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SizedBox(width: 20,),
//                 SizedBox(width: 100,child:
//                 Text("Total",style: TextStyle(fontWeight: FontWeight.bold),),),
//
// Text("-"),
//                 SizedBox(width: 130,child:  Text("₹20,000"),),
//
//
//               ],),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 10),
              child:  Container(height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [

                      Color(0xffc20e84),
                      Color(0xFFa20b6a),
                      Color(0xFF500a3f),
                      // Color(0xFF1c041c),
                      // Colors.white
                    ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
                child: Center(child: TextButton(onPressed: (){}, child: Text("Payment",style: TextStyle(color: Colors.white,fontSize: 16,),))),
              ),
            )
          ],)      ),
      ),


      SizedBox(height: 0,),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        child: ClayContainer(borderRadius: 15,color: Colors.white,
            child: Column(children: [
              Container(height: 45,  alignment: Alignment.center,
                  decoration: BoxDecoration( color: Color(0xFF500a3f),borderRadius: BorderRadius.only(
                      topRight: Radius.circular(5),
                      topLeft: Radius.circular(5)
                  )),


                  child:Text("December",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xFFa20b6a),
                  ),),



                  child: Column(
                    children: [

                      // Container(height: 40,
                      //   child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       SizedBox(width: 130,child:  Text("Payment status"),),
                      //       VerticalDivider(thickness:1.3,color: Colors.black38,),
                      //       SizedBox(width: 130,child:  Text("Pending.."),),
                      //     ],),
                      // ),
                      // Divider(thickness: 2,),
                      CommonFeeRow(maintext: "Monthly Fee", subtext: "750"),
                      CommonFeeRow(maintext: "Computer Fee", subtext: "450"),
                      CommonFeeRow(maintext: "Lab Fee", subtext: "550"),
                      CommonFeeRow(maintext: "Transport Fee", subtext: "700"),
                      // Divider(thickness: 1,color:Color(0xFFa20b6a),),
                      CommonFeeRow(maintext: "Total Fee",subtext: "2300"),
                      CommonFeeRow(maintext: "Payment Status", subtext: "Paid successfully..."),

                      // SizedBox(height: 5,),














                      // CommonFeeRow(maintext: "Admission", subtext: "₹2500"),

                      // Container(height: 44,width: double.infinity,
                      //     decoration: BoxDecoration(
                      //         // border: Border.all(),
                      //         color: Colors.pink.shade200
                      //     ),
                      //     alignment: Alignment.center,
                      //     child: Text("Proceed to pay"))

                    ],
                  ),
                ),
              ),
              // ElevatedButton(onPressed: (){}, child: Text("Payment"))

    ],)      ),
    )
        ]))));

  }
}


// SizedBox(width: 160,
// child: Container(decoration: BoxDecoration(border: Border.all()),
// child: Column(children: [
// Text("Computer fee"),
// Divider(thickness: 1,color: Colors.black,),
// Text("Term")
// ],),
// ),
// ),
// // VerticalDivider(thickness: 2,),
// SizedBox(width: 160,
// child: Container(decoration: BoxDecoration(border: Border.all()),
// child: Column(children: [
// Text("Computer fee"),
// Divider(thickness: 1,color: Colors.black,),
// Text("Term")
// ],),
// ),
// ),

