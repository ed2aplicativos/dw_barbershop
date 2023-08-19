import 'package:flutter/material.dart';

import '../../../../core/ui/widgets/hours_panel.dart';
import '../../../../core/ui/widgets/week_days_panel.dart';

class BarbershopRegisterPage extends StatelessWidget {
  const BarbershopRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cadastrar Estabelecimento',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 5),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('Nome'),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                decoration: const InputDecoration(
                  label: Text('E-mail'),
                ),
              ),
              const SizedBox(height: 24),
              const WeekDaysPanel(),
              const SizedBox(height: 24),
              const HoursPanel(
                startTime: 6,
                endTime: 23,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(56),
                ),
                child: const Text(
                  'CADASTRAR ESTABELECIMENTO',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
