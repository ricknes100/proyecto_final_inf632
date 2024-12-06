import 'package:flutter/material.dart';
import 'package:proyecto_final_inf632/views/screens/auth/login_screen.dart';
import 'package:proyecto_final_inf632/views/screens/select_role_screen.dart';

import './views/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citas Médicas App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}