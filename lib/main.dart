import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Third-party packages.
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Local project.
import 'package:nike_shoes_app/src/kernel/painless.dart';

void main() {
  runApp(
    const ProviderScope(
      child: Kernel(),
    ),
  );
}

class Kernel extends StatelessWidget {
  const Kernel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Nike Shoes',
      theme: ThemeData(
        useMaterial3: true,
      ),
      localizationsDelegates: const [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
      ],
      locale: const Locale("fa", "IR"),
      home: const HomeScreen(),
    );
  }
}
