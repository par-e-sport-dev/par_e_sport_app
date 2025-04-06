import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("par.e.sport"), centerTitle: true),
      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
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
