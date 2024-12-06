import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Especialidades',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
              TextButton(onPressed: (){}, child: const Text('Ver todos'))
            ],
          ),
        ),
        const Specialties(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Doctores disponibles',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
              ),
              TextButton(onPressed: (){}, child: const Text('Ver todos'))
            ],
          ),
        ),
        const DoctorsAvailable()
      ],
    );
  }
}

class Specialties extends StatelessWidget {
  const Specialties({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _SpecialtyItem(name: 'Dentista', icon: Icons.person_outline),
          _SpecialtyItem(name: 'Dermatólogo', icon: Icons.face),
          _SpecialtyItem(name: 'Psicólogo', icon: Icons.person_outline),
          _SpecialtyItem(name: 'General', icon: Icons.person_search_outlined),
          _SpecialtyItem(name: 'Dentista', icon: Icons.person_outline),
          _SpecialtyItem(name: 'Dentista', icon: Icons.person_outline),
          _SpecialtyItem(name: 'Dentista', icon: Icons.person_outline),
          _SpecialtyItem(name: 'Dentista', icon: Icons.person_outline),
        ],
      ),
    );
  }
}

class _SpecialtyItem extends StatelessWidget {

  final String name;
  final IconData icon;

  const _SpecialtyItem({super.key, required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      // color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28.0, color: Colors.indigo),
          const SizedBox(height: 8.0),
          Text(name)
        ],
      ),
    );
  }
}

class DoctorsAvailable extends StatelessWidget {
  const DoctorsAvailable({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        crossAxisCount: 3,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        shrinkWrap: true,
        childAspectRatio: 0.6,
        children: const [
          DoctorCard(doctorName: 'Dra. Sofía Peñaranda', photoUrl: 'https://cdn.pixabay.com/photo/2024/01/03/17/19/generated-to-8485866_960_720.png', speciality: 'Pediatra',),
          DoctorCard(doctorName: 'Dr. Pablo Montoya', photoUrl: 'https://cdn.pixabay.com/photo/2024/09/03/15/21/ai-generated-9019520_960_720.png', speciality: 'Psicólogo'),
          DoctorCard(doctorName: 'Dra. Kelly Sanchez', photoUrl: 'https://cdn.pixabay.com/photo/2024/01/12/14/14/ai-generated-8504039_1280.jpg', speciality: 'Dermatólogo'),
          DoctorCard(doctorName: 'Dr. Juan Fernandez', photoUrl: 'https://cdn.pixabay.com/photo/2024/10/13/17/59/doctor-9117768_960_720.jpg', speciality: 'Dentista'),
          DoctorCard(doctorName: 'Dra. Karen Aguilar', photoUrl: 'https://cdn.pixabay.com/photo/2018/05/29/18/16/dr-3439566_1280.jpg', speciality: 'Cirujano'),
          DoctorCard(doctorName: 'Dr. Miguel Quintanilla', photoUrl: 'https://cdn.pixabay.com/photo/2024/02/21/15/01/doctor-8587851_1280.png', speciality: 'Cirujano'),
        ],
      ),
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

    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            photoUrl,
            height: size.height * 0.15,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(doctorName, maxLines:2),
        Text(speciality, style: const TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}



