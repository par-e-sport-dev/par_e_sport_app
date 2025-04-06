import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "par.e.sport",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
