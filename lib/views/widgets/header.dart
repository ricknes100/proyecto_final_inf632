import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String title;
  final String description;

  const Header({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      height: size.height * 0.10,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: colors.primary),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
