import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/home/home.dart';
import 'package:par_e_sport/pages/pari/pari.dart';

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
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selection = 0;

  final List<Widget> _pages = [HomePage(), Pari()];

  void _onPress(int index) {
    setState(() {
      _selection = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selection, children: _pages),

      bottomNavigationBar: NavigationBar(),
    );
  }

  Widget NavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: _selection,
      onTap: _onPress,
      selectedItemColor: Color.fromARGB(108, 5, 0, 30),

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
