import 'package:flutter/material.dart';
import './appointment_detail_screen.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        AppointmentCard(
          doctorName: 'Dra. Sofía Peñaranda',
          photoUrl: 'https://cdn.pixabay.com/photo/2024/01/03/17/19/generated-to-8485866_960_720.png',
          date: 'Lunes, 2 Diciembre - 11:00 AM',
        ),
        AppointmentCard(
          doctorName: 'Dr. Pablo Montoya',
          photoUrl: 'https://cdn.pixabay.com/photo/2024/09/03/15/21/ai-generated-9019520_960_720.png',
          date: 'Viernes, 6 Diciembre - 16:00 PM',
        ),
      ],
    );
  }
}

class AppointmentCard extends StatelessWidget {

  final String doctorName;
  final String photoUrl;
  final String date;

  const AppointmentCard({
    super.key,
    required this.doctorName,
    required this.photoUrl,
    required this.date
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const AppointmentDetailScreen())),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      photoUrl,
                      height: 48,
                      width: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctorName, style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text('Pediatra', style: TextStyle(color: Colors.grey[700])),
                      /*Chip(
                        padding: EdgeInsets.zero,
                        backgroundColor: Colors.green[50],
                        side: BorderSide.none,
                        shape: const StadiumBorder(),
                        label: const Text('Completado', style: TextStyle(fontSize: 12.0, color: Colors.green)),
                      )*/
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                    child: const Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16.0),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(),
              ),
              Row(
                children: [
                  const Icon(Icons.access_time),
                  const SizedBox(width: 16.0),
                  Text(date),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

