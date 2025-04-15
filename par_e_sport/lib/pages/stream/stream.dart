import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/appbar.dart';
import 'package:par_e_sport/pages/stream/widgets/categorie.dart';
import 'package:par_e_sport/pages/stream/widgets/header_stream.dart';
import 'package:par_e_sport/pages/stream/widgets/live.dart';
import 'package:par_e_sport/pages/stream/widgets/research.dart';

class StreamPage extends StatelessWidget {
  const StreamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent, // IMPORTANT !
      onTap: () {
        FocusScope.of(context).unfocus(); // ⬅️ ça ferme le clavier
      },
      child: Scaffold(
        appBar: MyAppBar(),
        body: ListView(
          children: [
            HeaderStream(),
            Research(),
            LiveCurrent(),
            CategoriePage(),
          ],
        ),
      ),
    );
  }
}
