import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/home/widgets/match.dart';
import 'dart:math' as math;
import 'package:par_e_sport/pages/home/widgets/new_games.dart';
import 'package:par_e_sport/pages/home/widgets/updates_games.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "par.e.sport",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 35, fontFamily: "Inter"),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: Color(0xFF05001e),
        elevation: 0,
        flexibleSpace: Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Transform.translate(
                offset: Offset(-20, 60),
                child: Transform.rotate(
                  angle: math.pi / 4,
                  child: Image.asset("Assets/img/trophy.png", width: 60),
                ),
              ),
            ),

            Align(
              alignment: Alignment.topLeft,
              child: Transform.translate(
                offset: Offset(20, 20),
                child: Transform.rotate(
                  angle: math.pi / -4,
                  child: Image.asset("Assets/img/controler.png", width: 60),
                ),
              ),
            ),
          ],
        ),
      ),

      body: ListView(children: [NewGames(), UpdatesGames(), MatchToSee()]),

      bottomNavigationBar: NavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          label: "Accueil",
          icon: Image.asset("Assets/img/accueil.png", width: 60),
        ),
        BottomNavigationBarItem(
          label: "Pari",
          icon: Image.asset("Assets/img/coin.png", width: 60),
        ),
        BottomNavigationBarItem(
          label: "Stream",
          icon: Image.asset("Assets/img/video.png", width: 60),
        ),
        BottomNavigationBarItem(
          label: "Amis",
          icon: Image.asset("Assets/img/friends.png", width: 60),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Image.asset("Assets/img/profile.png", width: 60),
        ),
      ],
    );
  }
}
