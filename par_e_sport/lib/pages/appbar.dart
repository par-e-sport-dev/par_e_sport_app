import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(80.0);
}
