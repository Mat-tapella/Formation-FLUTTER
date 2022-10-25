import 'package:flutter/material.dart';
import 'package:test/widgets/button_exo2.dart';

class AcademyPage extends StatelessWidget {
  const AcademyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const ButtonExo2(),
    ));
  }
}
