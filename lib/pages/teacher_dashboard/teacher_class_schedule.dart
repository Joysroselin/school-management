import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TeacherClassSchedule extends StatelessWidget{
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("My Class Schedule"),),
        body: Container(
          child: SfCalendar(
            view: CalendarView.month,
            dataSource: MeetingDataSource(_getDataSource()),
            monthViewSettings: MonthViewSettings(showAgenda: true,
                appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
          ),
        ));
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 2));
    // meetings.add(
    //     Meeting('Conference', startTime, endTime, const Color(0xFF0F8644), false));
    meetings.add(
        Meeting('Science Lab', startTime, endTime, const Color(0xFF120961), false));

    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source){
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}

// class MoreSchedule extends StatelessWidget{
//   get calendarController => null;
//
//   get calendarDataSource => null;
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return SfCalendar(
//         controller: calendarController,
//         dataSource: calendarDataSource,
//         allowedViews: _allowedViews,
//         loadMoreWidgetBuilder:
//             (BuildContext context, LoadMoreCallback loadMoreAppointments) {
//           return FutureBuilder<void>(
//             future: loadMoreAppointments(),
//             builder: (context, snapShot) {
//               return Container(
//                   height: _calendarController.view == CalendarView.schedule
//                       ? 50
//                       : double.infinity,
//                   width: double.infinity,
//                   alignment: Alignment.center,
//                   child: CircularProgressIndicator(
//                       valueColor: AlwaysStoppedAnimation(Colors.blue)));
//             },
//           );
//         },
//         monthViewSettings: MonthViewSettings(
//             appointmentDisplayMode: MonthAppointmentDisplayMode.appointment,
//             appointmentDisplayCount: 4),
//         timeSlotViewSettings: TimeSlotViewSettings(
//             minimumAppointmentDuration: const Duration(minutes: 60)));
//
//   }
// }
//
// class _allowedViews {
// }
// class _MeetingDataSource extends CalendarDataSource {
//   _MeetingDataSource(List<Appointment> source) {
//     appointments = source;
//   }
//
//   @override
//   Future<void> handleLoadMore(DateTime startDate, DateTime endDate) async {
//     await Future.delayed(Duration(seconds: 1));
//     final List<Appointment> meetings = <Appointment>[];
//     DateTime date = DateTime(startDate.year, startDate.month, startDate.day);
//     final DateTime appEndDate =
//     DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59);
//     while (date.isBefore(appEndDate)) {
//       final List<Appointment>? data = _dataCollection[date];
//       if (data == null) {
//         date = date.add(Duration(days: 1));
//         continue;
//       }
//
//       for (final Appointment meeting in data) {
//         if (appointments!.contains(meeting)) {
//           continue;
//         }
//
//         meetings.add(meeting);
//       }
//       date = date.add(Duration(days: 1));
//     }
//
//     appointments!.addAll(meetings);
//     notifyListeners(CalendarDataSourceAction.add, meetings);
//   }
// }
//
// class _dataCollection {
// }