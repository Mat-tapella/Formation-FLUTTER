import 'package:flutter/material.dart';
import 'package:test/widgets/academy_page.dart';
import 'package:test/widgets/formulaire_exo3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const FormExo3(),
    );
  }
}
