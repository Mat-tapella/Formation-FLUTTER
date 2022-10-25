import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/widgets/academy_page.dart';
import 'package:test/widgets/exo4/getx_exo4_bindings.dart';
import 'package:test/widgets/exo4/getx_exo4_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      getPages: [
        GetPage(
          name: "/exo4",
          page: () => const GetxExo4View(),
          binding: GetxExo4Bindings(),
        ),
      ],
      initialRoute: "exo4",
      home: const GetxExo4View(),
    );
  }
}
