import 'package:flutter/material.dart';
import 'package:proyecto_final_inf632/views/screens/appointments/registered_appointment_screen.dart';
import 'package:weekly_calendar/weekly_calendar.dart';

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
            const Expanded(
              child: WeeklyCalendar(
                calendarStyle: CalendarStyle(
                  locale: 'es',
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                  ),
                  isShowHeaderDateText: false,
                  footerDateTextColor: Colors.black,
                  selectedCircleColor: Colors.indigo,
                  todaySelectedCircleColor: Colors.indigo,
                  todayDayTextColor: Colors.indigo
                ),
              ),
            ),
            const Text(
              'Horarios disponibles',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
            const AppointmentTime(),
            const SizedBox(height: 8.0),
            FilledButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisteredAppointmentScreen())),
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
              ),
              child: const Text('Reservar una cita'),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('LUNES, 2 DIC'),
        // SizedBox(height: 4.0),
        Wrap(
          spacing: 4.0,
          children: [
            Chip(label: Text('09:00 AM'), padding: EdgeInsets.all(4.0)),
            Chip(label: Text('11:00 AM'), padding: EdgeInsets.all(4.0)),
            Chip(label: Text('14:00 PM'), padding: EdgeInsets.all(4.0)),
            Chip(label: Text('16:00 PM'), padding: EdgeInsets.all(4.0)),
          ],
        )
      ],
    );
  }
}
