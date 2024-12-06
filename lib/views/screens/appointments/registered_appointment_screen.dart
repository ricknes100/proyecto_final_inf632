import 'package:flutter/material.dart';

class RegisteredAppointmentScreen extends StatelessWidget {
  const RegisteredAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/confirmation.png',
              height: size.height * 0.25,
            ),
            const Text('Cita registrada', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600)),
            const SizedBox(height: 8.0),
            const Text('Ha reservado una cita con la Dra. Sofía Fernandez'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0),
              child: Divider(indent: 32.0, endIndent: 32.0),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person_outline, color: Colors.indigo),
                SizedBox(width: 8.0),
                Text('John Doe')
              ],
            ),
            const SizedBox(height: 16.0),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.event_outlined, color: Colors.indigo),
                SizedBox(width: 8.0),
                Text('2 Diciembre, 2024'),
                SizedBox(width: 16.0),
                Icon(Icons.access_time_outlined, color: Colors.indigo),
                SizedBox(width: 8.0),
                Text('10:00 am')
              ],
            ),
            const SizedBox(height: 24.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: FilledButton(
                onPressed: () => Navigator.of(context).pop(),
                style: FilledButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0))
                ),
                child: const Text('Ir a citas'),
              ),
            )

          ],
        ),
      ),
    );
  }
}
