import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_management/common/common_widgets.dart';
import 'package:school_management/pages/student_dashboard/stu_report_card.dart';

class TestMarkUpload extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("Report "),elevation: 0.0,
    backgroundColor:   Color(0xffc20e84),),
      body: SingleChildScrollView(child: Container(width: MediaQuery.of(context).size.width,
        child: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Exam or Test   : ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
                  Text("Mid Term Examination",style: TextStyle(color:Color(0xFF500a3f),fontWeight: FontWeight.bold,fontSize: 18 ),)
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text("Result  date     : ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17),),
Text("24-10-2022")
                ],
              ),
            ],
          ),
        ),
        CommonReportField(maintext: 'Student Name', subtext: '',),
        CommonReportField(maintext: 'Student Enroll No', subtext: '',),
CommonReportField(maintext: 'Subject', subtext: '',),

        CommonReportField(maintext: 'Total Marks', subtext: '',),
        CommonReportField(maintext: 'Passing Marks', subtext: '',),
        CommonReportField(maintext: 'Obtained Marks', subtext: '',),
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
              Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentReportCard()));
            }, child: Row(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,),
                child: Icon(Icons.save,color: Colors.yellow.shade50,),
              ),
              Text("Save",style: TextStyle(color: Colors.white,fontSize: 16,),)
            ],)),
          ),
        ),





        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //   child: Container(height: 45,
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
        //     child: TextFormField(maxLines: 3,
        //       decoration: InputDecoration(prefixIcon: Icon(Icons.person),
        //
        //         border: InputBorder.none,
        //          hintText: "Student Name*"
        //       ),
        //     ),
        //   ),
        // ),
        //
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //   child: Container(height: 45,
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
        //     child: TextFormField(maxLines: 3,
        //       decoration: InputDecoration(prefixIcon: Icon(Icons.person),
        //
        //           border: InputBorder.none,
        //           hintText: "Enrollment no*"
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //   child: Container(height: 45,
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
        //     child: TextFormField(maxLines: 3,
        //       decoration: InputDecoration(prefixIcon: Icon(Icons.person),
        //
        //           border: InputBorder.none,
        //           hintText: "Subject Name*"
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //   child: Container(height: 45,
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
        //     child: TextFormField(maxLines: 3,
        //       decoration: InputDecoration(prefixIcon: Icon(Icons.person),
        //
        //           border: InputBorder.none,
        //           hintText: "Total marks*"
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //   child: Container(height: 45,
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
        //     child: TextFormField(maxLines: 3,
        //       decoration: InputDecoration(prefixIcon: Icon(Icons.person),
        //
        //           border: InputBorder.none,
        //           hintText: "Passing marks"
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        //   child: Container(height: 45,
        //     decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2),borderRadius: BorderRadius.circular(5)),
        //     child: TextFormField(maxLines: 3,
        //       decoration: InputDecoration(prefixIcon: Icon(Icons.person),
        //
        //           border: InputBorder.none,
        //           hintText: "Obtained Marks*"
        //       ),
        //     ),
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(horizontal: 80,vertical: 15),
        //   child:  Container(height: 40,width: 120,
        //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        //         gradient: LinearGradient(colors: [
        //
        //           Color(0xffc20e84),
        //           Color(0xFFa20b6a),
        //           Color(0xFF500a3f),
        //           // Color(0xFF1c041c),
        //           // Colors.white
        //         ],begin: Alignment.topLeft,end: Alignment.bottomRight,)),
        //     child: TextButton(onPressed: (){
        //       // Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendanceOnSave()));
        //     }, child: Row(children: [
        //       Padding(
        //         padding: const EdgeInsets.symmetric(horizontal: 10,),
        //         child: Icon(Icons.save,color: Colors.yellow.shade50,),
        //       ),
        //       Text("Save",style: TextStyle(color: Colors.white,fontSize: 16,),)
        //     ],)),
        //   ),
        // ),

      ],),),),
    );
  }
}