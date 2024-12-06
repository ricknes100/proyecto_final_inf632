import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return Center(
      child: Column(
        children: [
          ListTile(
            onTap: (){},
            leading: Icon(Icons.person_outline, color: colors.primary),
            title: const Text('Datos personales'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.grey),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.settings_outlined, color: colors.primary),
            title: const Text('Configuración'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 20.0, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
