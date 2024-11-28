import 'package:flutter/material.dart';

class DoctorDetail extends StatelessWidget {
  const DoctorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2024/01/03/17/19/generated-to-8485866_960_720.png',
                    height: 80,
                    width: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Dra. Sofía Peñaranda',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 18.0),
                    ),
                    Text(
                      'Pediatra',
                      style: TextStyle(color: Colors.grey[700], fontSize: 16.0),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Acerca de Sofía',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'La pediatra atiende una extensa serie de servicios de salud, los cuales incluyen tanto la atención profiláctica y preventiva como el diagnóstico y el tratamiento de diferentes enfermedades y malestares propios de los niños.',
              style: TextStyle(height: 2.0),
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Reserva una cita',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 8.0),
            const AppointmentTime(),
            Expanded(child: Container()),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Siguiente'),
            )
          ],
        ),
      ),
    );
  }
}

class AppointmentTime extends StatelessWidget {
  const AppointmentTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('LUNES, 2 DIC'),
        SizedBox(height: 4.0),
        Chip(label: Text('9:00 AM'))
      ],
    );
  }
}
