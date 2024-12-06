import 'package:flutter/material.dart';

class AppointmentDetailScreen extends StatelessWidget {
  const AppointmentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle cita'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2024/01/03/17/19/generated-to-8485866_960_720.png',
                    height: 64,
                    width: 64,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Dra. Sofía Peñaranda', style: TextStyle(fontWeight: FontWeight.w600)),
                    Text('Pediatra', style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fecha', style: TextStyle(fontSize: 18.0, color: Colors.grey[700])),
                const Text('Diciembre 2, 2024', style: TextStyle(fontSize: 18.0)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hora', style: TextStyle(fontSize: 18.0, color: Colors.grey[700])),
                const Text('10:00 AM', style: TextStyle(fontSize: 18.0)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lugar', style: TextStyle(fontSize: 18.0, color: Colors.grey[700])),
                const Text('Clinica 1ro de Mayo', style: TextStyle(fontSize: 18.0)),
              ],
            ),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Estado', style: TextStyle(fontSize: 18.0, color: Colors.grey[700])),
                const Chip(
                  label: Text('Reservado'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


