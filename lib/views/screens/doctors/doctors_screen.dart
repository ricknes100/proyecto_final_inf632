import 'package:flutter/material.dart';
import 'package:proyecto_final_inf632/views/screens/doctors/doctor_detail.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      children: const [
        DoctorCard(),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {

  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorDetail())),
      child: Card(
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
                      'https://cdn.pixabay.com/photo/2024/01/03/17/19/generated-to-8485866_960_720.png',
                      height: 48,
                      width: 48,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Dra. Sofía Peñaranda', style: TextStyle(fontWeight: FontWeight.w600)),
                      Text('Pediatra', style: TextStyle(color: Colors.grey[700]))
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const AppointmentDetail(icon: Icons.favorite_outline, description: '50 Pacientes atendidos'),
              const SizedBox(height: 8.0),
              const AppointmentDetail(icon: Icons.location_on_outlined, description: 'Av. Camacho'),
              const SizedBox(height: 8.0),
              const AppointmentDetail(icon: Icons.access_time, description: 'Disponible'),
              const SizedBox(height: 8.0),
              const Chip(label: Text('9:00 AM'))
            ],
          ),
        ),
      ),
    );
  }
}

class AppointmentDetail extends StatelessWidget {

  final IconData icon;
  final String description;

  const AppointmentDetail({super.key, required this.icon, required this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 20.0),
        const SizedBox(width: 8.0),
        Text(description)
      ],
    );
  }
}

