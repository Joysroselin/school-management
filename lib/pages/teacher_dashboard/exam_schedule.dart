import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';


class ExamSchedule extends StatefulWidget{
  @override
  State<ExamSchedule> createState() => _ExamScheduleState();
}

class _ExamScheduleState extends State<ExamSchedule> {
  String _range = 'select date';


  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {

    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
        // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      }
    });
  }
  DateTime? startDate;
  DateTime? endDate;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Exam Schedule"),elevation: 0.0,),
      body: SingleChildScrollView(child: Container(child: Column(
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10,),
          child: Container( height: 190,width: double.infinity,
          child: SfDateRangePicker(

            onSelectionChanged: _onSelectionChanged,
            selectionMode: DateRangePickerSelectionMode.range,
            initialSelectedRange: PickerDateRange(
                DateTime.now().subtract(const Duration(days: 4)),
                DateTime.now().add(const Duration(days: 3))),
          ),),
        ),
        SizedBox(height: 10,),
        Container(alignment: Alignment.topLeft,child: Text("    Upcoming Exam Schedule",style: TextStyle(fontWeight: FontWeight.bold),)),
          SizedBox(height: 10,),   Container(height: 500,
            child: ListView.builder(itemExtent: 70,shrinkWrap: true,primary: false,
              itemCount:10,itemBuilder: (context,index)
          {return
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: ClayContainer(borderRadius: 10,height: 50,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Science",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500,fontSize: 17),),
                      SizedBox(height: 10,),
                      Text("26-01-2022"),
                      SizedBox(height: 5),
                      Text("Tuesday",style: TextStyle(color: Colors.grey),),
                      Text("9:00 Am - 12:00 PM",style: TextStyle(color: Colors.black),)

                    ],
                  ),
                ),),
            );
          }),)
      ],),),),
    );
  }}



















//         body:SingleChildScrollView(child: Stack(children: [
//
//           Container(height: 150,
//             child: AppBar(
//               title: Text("Exam Schedule"),shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
//                 bottomRight: Radius.circular(40),
//                 bottomLeft: Radius.circular(40))),
//             ),),
//
//
//           Padding(
//             padding: const EdgeInsets.only(top: 110,left: 30,right: 20),
//             child: Column(
//               children: [
//                 Container(height: 120,color: Colors.green.withOpacity(0.5),),
//
//               ],
//             ),
//
//           ),
//
//         ],)));
//   }
// }