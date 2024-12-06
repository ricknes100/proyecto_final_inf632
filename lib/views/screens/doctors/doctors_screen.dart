import 'package:flutter/material.dart';
import './doctor_detail.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Buscar por nombre, especialidad, ubicación...',
              hintStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400)
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            children: const [
              DoctorCard(doctorName: 'Dra. Sofía Peñaranda', photoUrl: 'https://cdn.pixabay.com/photo/2024/01/03/17/19/generated-to-8485866_960_720.png', speciality: 'Pediatra',),
              DoctorCard(doctorName: 'Dr. Pablo Montoya', photoUrl: 'https://cdn.pixabay.com/photo/2024/09/03/15/21/ai-generated-9019520_960_720.png', speciality: 'Psicólogo'),
              DoctorCard(doctorName: 'Dra. Kelly Sanchez', photoUrl: 'https://cdn.pixabay.com/photo/2024/01/12/14/14/ai-generated-8504039_1280.jpg', speciality: 'Dermatólogo'),
              DoctorCard(doctorName: 'Dr. Juan Fernandez', photoUrl: 'https://cdn.pixabay.com/photo/2024/10/13/17/59/doctor-9117768_960_720.jpg', speciality: 'Dentista'),
              DoctorCard(doctorName: 'Dra. Karen Aguilar', photoUrl: 'https://cdn.pixabay.com/photo/2018/05/29/18/16/dr-3439566_1280.jpg', speciality: 'Cirujano'),
              DoctorCard(doctorName: 'Dr. Miguel Quintanilla', photoUrl: 'https://cdn.pixabay.com/photo/2024/02/21/15/01/doctor-8587851_1280.png', speciality: 'Cirujano'),
            ],
          ),
        ),
      ],
    );
  }
}

class DoctorCard extends StatelessWidget {

  final String doctorName;
  final String photoUrl;
  final String speciality;

  const DoctorCard({super.key, required this.doctorName, required this.photoUrl, required this.speciality});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorDetail())),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      photoUrl,
                      height: 56,
                      width: 56,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(doctorName, style: const TextStyle(fontWeight: FontWeight.w600)),
                      Text(speciality, style: TextStyle(color: Colors.grey[700]))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
