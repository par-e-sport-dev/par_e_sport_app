import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/appbar.dart';
import 'package:par_e_sport/pages/pari/widgets/top_section.dart';

class Pari extends StatelessWidget {
  const Pari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(children: [TopSection()]),
    );
  }
}
