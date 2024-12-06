import 'package:flutter/material.dart';

import './login_screen.dart';
import '../main_screen.dart';
import '../../widgets/header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String fullName = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/wallpaper_2.png',
              height: size.height * 0.25,
            ),
            const Header(
              title: 'Crea una cuenta',
              description: 'Regístrate para comenzar a reservar citas',
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Nombre completo', style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4.0),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Tu nombre',
                      hintStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400),
                      border: const OutlineInputBorder(),
                      suffixIcon: Icon(Icons.person_outline, color: colors.primary),
                    ),
                    onChanged: (value) => fullName = value,
                    validator: (value) {
                      if (value!.isEmpty) return 'Campo requerido';
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  const Text('Correo electrónico', style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4.0),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Tu correo',
                      hintStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400),
                      border: const OutlineInputBorder(),
                      suffixIcon: Icon(Icons.email_outlined, color: colors.primary),
                    ),
                    onChanged: (value) => email = value,
                    validator: (value) {
                      if (value!.isEmpty) return 'Campo requerido';
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  const Text('Contraseña', style: TextStyle(fontWeight: FontWeight.w500)),
                  const SizedBox(height: 4.0),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Tu contraseña',
                      hintStyle: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400),
                      border: const OutlineInputBorder(),
                      suffixIcon: Icon(Icons.lock_outline, color: colors.primary),
                    ),
                    onChanged: (value) => password = value,
                    validator: (value) {
                      if (value!.isEmpty) return 'Campo requerido';
                      if (value.length < 8) {
                        return 'Contraseña debe tener 8 o más caracteres';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  FilledButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MainScreen())
                        );
                      }
                    },
                    style: FilledButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text('Registrarse'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('¿Ya tienes una cuenta?'),
                TextButton(
                  onPressed: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginScreen())
                  ),
                  child: const Text('Inicia sesión'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
