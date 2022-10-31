import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_clean_calendar/clean_calendar_event.dart';
import 'package:flutter_clean_calendar/flutter_clean_calendar.dart';


class AdminEventMarker extends StatefulWidget{
  @override
  State<AdminEventMarker> createState() => _AdminEventMarkerState();
}

class _AdminEventMarkerState extends State<AdminEventMarker> {
     // late DateTime selectedDay;
  late List <CleanCalendarEvent> selectedEvent;
  final Map<DateTime,List<CleanCalendarEvent>>events={
    DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day):[
      CleanCalendarEvent('Event A',startTime:DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
      endTime:DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day,10,0),
      description:'A specia Event'),

    ],
    DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
    [
      CleanCalendarEvent('Event B',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 10, 0),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 12, 0),
          color: Colors.orange),
      CleanCalendarEvent('Event C',
          startTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 14, 30),
          endTime: DateTime(DateTime.now().year, DateTime.now().month,
              DateTime.now().day + 2, 17, 0),
          color: Colors.pink),
    ]
  };
  @override
  void _handleData(date){
    setState(() {
      var selectedDay=date;
      selectedEvent=events[selectedDay]??[];
      super.initState();
    });
   Object? selectedDay;
   print( selectedDay);
  }
  @override
  void initState() {
    // TODO: implement initState
var date;
    var selectedDay=date;
    selectedEvent=events[selectedDay]??[];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold
      (
      // backgroundColor: Colors.pink,
       body: SafeArea(
         child: Padding(
           padding: const EdgeInsets.only(top: 40),
           child: Container(child:
             Calendar(startOnMonday: true,
                 selectedColor: Colors.blue,
                 eventColor: Colors.green,
                 todayColor: Colors.red,
             bottomBarColor: Colors.deepOrange,
                 onRangeSelected: (range){
               print('selected Day ${range.from},${range.to}');
                 },
             onDateSelected: (date){
               return _handleData(date);
             },
             events: events,
               isExpanded: true,
                expandableDateFormat: 'EEEE, dd. MMMM yyyy',
               dayOfWeekStyle: TextStyle(color: Colors.pink,fontWeight: FontWeight.bold),
               bottomBarTextStyle: TextStyle(color: Colors.green),
               hideBottomBar: false,
             ),),
         ),

      ),
    );
  }
}

