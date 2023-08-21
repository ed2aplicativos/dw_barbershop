import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../../../core/ui/constants.dart';
import 'appointment_ds.dart';

class EmployeeSchedulePage extends StatelessWidget {
  const EmployeeSchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agenda'),
      ),
      body: Column(
        children: [
          const Text(
            'Nome e sobrenome',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 44),
          Expanded(
            child: SfCalendar(
              allowViewNavigation: true,
              view: CalendarView.day,
              showNavigationArrow: true,
              todayHighlightColor: ColorsConstants.brown,
              showDatePickerButton: true,
              showTodayButton: true,
              dataSource: AppointmentDS(),
              onTap: (calendarTapDetails) {
                if (calendarTapDetails.appointments!.isNotEmpty) {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      final dateFormat = DateFormat('dd//MM/yyyy HH:mm');
                      return SizedBox(
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Cliente: ${calendarTapDetails.appointments?.first.subject}'),
                              Text(
                                  'Horário: ${dateFormat.format(calendarTapDetails.date ?? DateTime.now())}'),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
              appointmentBuilder: (context, calendarAppointmentDetails) {
                return Container(
                  decoration: BoxDecoration(
                    color: ColorsConstants.brown,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                        calendarAppointmentDetails.appointments.first.subject,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
