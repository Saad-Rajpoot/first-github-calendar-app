import 'dart:math';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'Services/app_drawer.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  int currentIndex = 0;
  late MeetingDataSource _events;
  late List<Appointment> _shiftCollection;

  late List<CalendarResource> _employeeCalendarResource;
  // late List<TimeRegion> _specialTimeRegions;

  @override
  void initState() {
    addResourceDetails();
    addAppointments();
    // addSpecialRegions();
    _events = MeetingDataSource(_shiftCollection, _employeeCalendarResource);
    super.initState();
  }

  void addAppointments() {
    var subjectCollection = [
      'General Meeting',
      'Plan Execution',
      'Project Plan',
      'Consulting',
      'Support',
      'Development Meeting',
      'Scrum',
      'Project Completion',
      'Release updates',
      'Performance Check'
    ];

    var colorCollection = [
      const Color(0xFF0F8644),
      const Color(0xFF8B1FA9),
      const Color(0xFFD20100),
      const Color(0xFFFC571D),
      const Color(0xFF85461E),
      const Color(0xFF36B37B),
      const Color(0xFF3D4FB5),
      const Color(0xFFE47C73),
      const Color(0xFF636363)
    ];

    _shiftCollection = <Appointment>[];
    for (var calendarResource in _employeeCalendarResource) {
      var employeeIds = [calendarResource.id];

      for (int j = 0; j < 365; j++) {
        for (int k = 0; k < 2; k++) {
          final DateTime date = DateTime.now().add(Duration(days: j + k));
          int startHour = 9 + Random().nextInt(6);
          startHour =
          startHour >= 13 && startHour <= 14 ? startHour + 1 : startHour;
          final DateTime _shiftStartTime =
          DateTime(date.year, date.month, date.day, startHour, 0, 0);
          _shiftCollection.add(Appointment(
              startTime: _shiftStartTime,
              endTime: _shiftStartTime.add(Duration(hours: 1)),
              subject: subjectCollection[Random().nextInt(8)],
              color: colorCollection[Random().nextInt(8)],
              startTimeZone: '',
              endTimeZone: '',
              resourceIds: employeeIds));
        }
      }
    }
  }

  void addResourceDetails() {
    var nameCollection = [
      'John',
      'Bryan',
      'Robert',
      'Kenny',
      'Tia',
      'Theresa',
      'Edith',
      'Brooklyn',
      'James William',
      'Sophia',
      'Elena',
      'Stephen',
      'Zoey Addison',
      'Daniel',
      'Emilia',
      'Kinsley Elena',
      'Danieals',
      'William',
      'Addison',
      'Ruby'
    ];

    // var userImages = [
    //   'images/People_Circle5.png',
    //   'images/People_Circle8.png',
    //   'images/People_Circle18.png',
    //   'images/People_Circle23.png',
    //   'images/People_Circle25.png',
    //   'images/People_Circle20.png',
    //   'images/People_Circle13.png',
    //   'images/People_Circle11.png',
    //   'images/People_Circle27.png',
    //   'images/People_Circle26.png',
    //   'images/People_Circle24.png',
    //   'images/People_Circle15.png',
    // ];

    _employeeCalendarResource = <CalendarResource>[];
    for (var i = 0; i < nameCollection.length; i++) {
      _employeeCalendarResource.add(CalendarResource(
        id: '000' + i.toString(),
        displayName: nameCollection[i],
        // color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
        //     Random().nextInt(255), 1),
        // image:
        // i < userImages.length ? ExactAssetImage(userImages[i]) : null)
      )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AppDrawer()));
                      },
                      child: Icon(
                        Icons.menu,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "CALENDAR",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(40.0), child: Container()),
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            // color: Colors.red,
                            border: Border(
                              right: BorderSide(
                                  width: 1, color: Color(0XFF808080)),
                            ),
                          ),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          )),
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.green,
                          border: Border(
                            right:
                                BorderSide(width: 1, color: Color(0XFF808080)),
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right:
                                BorderSide(width: 1, color: Color(0XFF808080)),
                          ),
                        ),
                        child: Icon(
                          Icons.sync_outlined,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          border: Border(
                            right:
                                BorderSide(width: 1, color: Color(0XFF808080)),
                          ),
                        ),
                        child: Icon(
                          Icons.visibility_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 0;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: currentIndex == 0
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "D",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 1;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: currentIndex == 1
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "W",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            currentIndex = 2;
                          });
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                              color: currentIndex == 2
                                  ? Colors.red
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "M",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700),
                            // style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0XFFf2f2f2),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border(
                          right: BorderSide(width: 1, color: Color(0XFF808080)),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                      )),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border(
                        right: BorderSide(width: 1, color: Color(0XFF808080)),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      // setState(() {
                      //   currentIndex = 0;
                      // });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Today",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Text(
                      "Wed Jul, 20, 2022",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        border: Border(
                          left: BorderSide(width: 1, color: Color(0XFF808080)),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      )),
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border(
                        left: BorderSide(width: 1, color: Color(0XFF808080)),
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                child: SfCalendar(
                  view: CalendarView.day,
                  firstDayOfWeek: 1,
                  // timeSlotViewSettings:
                  // TimeSlotViewSettings(startHour: 9, endHour: 18),
                  dataSource: _events,
                  // specialRegions: _specialTimeRegions
                )
              ),
            ),
          ],
        ));
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Appointment> shiftCollection,
      List<CalendarResource> employeeCalendarResource) {
    appointments = shiftCollection;
    resources = employeeCalendarResource;
  }
}

// SfCalendar(
// backgroundColor: Colors.white,
// view: CalendarView.workWeek,
// firstDayOfWeek: 1,
// initialDisplayDate: DateTime.now(),
// initialSelectedDate: DateTime.now(),
// dataSource: MeetingDataSource(getAppointments()),
// ),
// List<Appointment> getAppointments() {
//   final DateTime today = DateTime.now();
//   // final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0, 0);
//   // final DateTime endTime = startTime.add(const Duration(hours: 2));
//   List<Appointment> meetings = <Appointment>[
//     Appointment(
//         startTime: DateTime(today.year, today.month, today.day, 2, 0, 0),
//         endTime: DateTime(today.year, today.month, today.day, 2, 0, 0)
//             .add(const Duration(hours: 2)),
//         subject: 'Lance \n Executive Mens Hair Cut',
//         color: Colors.blue,
//         // recurrenceRule: 'FREQ=DAILY;COUNT=10',
//         isAllDay: false),
//     Appointment(
//         startTime: DateTime(today.year, today.month, today.day, 3, 0, 0),
//         endTime: DateTime(today.year, today.month, today.day, 3, 0, 0)
//             .add(const Duration(hours: 2)),
//         subject: 'John \n Father And Sons Hair Cut',
//         color: Colors.green,
//         // recurrenceRule: 'FREQ=DAILY;COUNT=10',
//         isAllDay: false),
//     Appointment(
//         startTime: DateTime(today.year, today.month, today.day, 4, 0, 0),
//         endTime: DateTime(today.year, today.month, today.day, 4, 0, 0)
//             .add(const Duration(hours: 2)),
//         subject: 'Dave \n Executive Experience Hair Cut',
//         color: Colors.red,
//         // recurrenceRule: 'FREQ=DAILY;COUNT=10',
//         isAllDay: false),
//     Appointment(
//         startTime: DateTime(today.year, today.month, today.day, 5, 0, 0),
//         endTime: DateTime(today.year, today.month, today.day, 5, 0, 0)
//             .add(const Duration(hours: 2)),
//         subject: 'Johny \n Hair Cut',
//         color: Colors.amber,
//         // recurrenceRule: 'FREQ=DAILY;COUNT=10',
//         isAllDay: false),
//   ];
//
//   // meetings.add(
//   //     Appointment(
//   //     startTime: startTime,
//   //     endTime: endTime,
//   //     subject: 'Board Meeting',
//   //     color: Colors.blue,
//   //     notes: "Executive Mens Hair Cut",
//   //     // recurrenceRule: 'FREQ=DAILY;COUNT=10',
//   //     isAllDay: false));
//
//   return meetings;
// }
//
// class MeetingDataSource extends CalendarDataSource {
//   MeetingDataSource(List<Appointment> source) {
//     appointments = source;
//   }
// }
