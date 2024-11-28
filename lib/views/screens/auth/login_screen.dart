import 'package:flutter/material.dart';
import 'package:proyecto_final_inf632/views/screens/auth/register_screen.dart';
import 'package:proyecto_final_inf632/views/screens/main_screen.dart';
import 'package:proyecto_final_inf632/views/widgets/header.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(
              title: 'Bienvenido',
              description: 'Inicia sesión para administrar tus citas',
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => email = value,
                    validator: (value) {
                      if (value!.isEmpty) return 'Campo requerido';
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => password = value,
                    validator: (value) {
                      if (value!.isEmpty) return 'Campo requerido';
                      if (value.length < 8) return 'Contraseña debe tener 8 o más caracteres';
                      return null;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  FilledButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MainScreen()));
                      }
                    },
                    child: const Text('Inicia sesión'),
                  ),
                  // const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('¿No tienes una cuenta?'),
                      TextButton(
                          onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const RegisterScreen())),
                          child: const Text('Regístrate'),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
