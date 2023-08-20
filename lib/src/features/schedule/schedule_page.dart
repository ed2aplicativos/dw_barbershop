import 'package:flutter/material.dart';

import '../../core/ui/barbershop_icons.dart';
import '../../core/ui/constants.dart';
import '../../core/ui/helpers/form_helper.dart';
import '../../core/ui/widgets/avatar_widget.dart';
import 'widgets/schedule_calendar.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agendar cliente'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                const AvatarWidget(hideUploadButton: true),
                const SizedBox(height: 24),
                const Text(
                  'Nome e sobrenome',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 37),
                TextFormField(
                  onTapOutside: (_) => context.unfocus(),
                  decoration: const InputDecoration(
                    label: Text('Cliente'),
                  ),
                ),
                const SizedBox(height: 32),
                TextFormField(
                  onTapOutside: (_) => context.unfocus(),
                  readOnly: true,
                  decoration: const InputDecoration(
                    hintText: 'Selecione a data',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    suffixIcon: Icon(BarbershopIcons.calendar,
                        color: ColorsConstants.brown, size: 18),
                  ),
                ),
                const SizedBox(height: 32),
                const ScheduleCalendar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
