import 'package:flutter/material.dart';

// Local project.
import 'package:nike_shoes_app/src/kernel/painless.dart';

void main() => runApp(const Kernel());

class Kernel extends StatelessWidget {
  const Kernel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nike Shoes',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
