import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/appbar.dart';
import 'package:par_e_sport/pages/home/widgets/match.dart';

import 'package:par_e_sport/pages/home/widgets/new_games.dart';
import 'package:par_e_sport/pages/home/widgets/player_transfert.dart';
import 'package:par_e_sport/pages/home/widgets/updates_games.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: MyAppBar(),

      body: ListView(
        children: [NewGames(), UpdatesGames(), PlayerTransfert(), MatchToSee()],
      ),
    );
  }
}
