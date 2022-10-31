import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class EventHolidays extends StatefulWidget{
  @override
  State<EventHolidays> createState() => _EventHolidaysState();
}

class _EventHolidaysState extends State<EventHolidays> {
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
      appBar: AppBar(title: Text("Event"),),
      body:  SingleChildScrollView(
        child: Container(
            child: Column(children: [

              Container(height: 250,child: SfDateRangePicker(

                onSelectionChanged: _onSelectionChanged,
                selectionMode: DateRangePickerSelectionMode.multiple,
                initialSelectedRange: PickerDateRange(
                    DateTime.now().subtract(const Duration(days: 4)),
                    DateTime.now().add(const Duration(days: 3))),
              ),),

              SizedBox(height: 20,),
              Container(child: ListView.builder(shrinkWrap: true,primary: false,
                  itemExtent: 75,
                  itemCount: 20,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      child: ClayContainer(borderRadius: 10,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Republic day",style: TextStyle(color: Colors.purple,fontWeight: FontWeight.w500,fontSize: 17),),
                            Column(
                              children: [
                                SizedBox(height: 10,),
                              Text("26-01-2022"),
                                SizedBox(height: 5),
                              Text("Tuesday",style: TextStyle(color: Colors.grey),)
                            ],)
                          ],
                        ),),
                    );
                  }),)
            // Expanded(child: Text("lllll"))


            ],
            ),
          ),
      ),


    );
  }
}