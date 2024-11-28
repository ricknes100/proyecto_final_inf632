import 'package:flutter/material.dart';

import './home_screen.dart';
import './doctors/doctors_screen.dart';
import './appointments/appointments_screen.dart';
import './profile/profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int currentScreenIndex = 0;
  final screens = [
    const HomeScreen(),
    const DoctorsScreen(),
    const AppointmentsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[currentScreenIndex]),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentScreenIndex = index;
          });
        },
        selectedIndex: currentScreenIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.groups),
            icon: Icon(Icons.groups_outlined),
            label: 'Médicos',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.event),
            icon: Icon(Icons.event_outlined),
            label: 'Citas',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outline),
            label: 'Mi perfil',
          )
        ],
      ),
    );
  }
}
