import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleCalendar extends StatelessWidget {
  const ScheduleCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2010, 01, 01),
          lastDay: DateTime.now().add(const Duration(days: 365 * 10)),
        ),
      ]),
    );
  }
}
