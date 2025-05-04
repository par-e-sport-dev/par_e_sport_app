import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/appbar.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "Amis  (10)",
                      style: TextStyle(fontFamily: "Inter", fontSize: 25),
                    ),
                  ],
                ),
              ),

              Padding(padding: EdgeInsets.only(top: 30)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis13.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "ShadowLynx",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis14.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "NovaKarma",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis3.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "PixelRider",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis4.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "ZeyraMoon",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis11.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Ghostix",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis6.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "VortexNeko",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis12.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "BlazeMorph",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis8.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "SilentEcho",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis9.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "NoxDrift",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 15)),

              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      "Assets/img/img_friends/amis10.png",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),

                  Padding(padding: EdgeInsets.only(left: 10)),

                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "LilithByte",
                          style: TextStyle(fontFamily: "Inter", fontSize: 15),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        padding: EdgeInsets.only(right: 30),
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Vous suis",
                          style: TextStyle(fontSize: 13),
                        ),
                      ),
                    ],
                  ),

                  Padding(padding: EdgeInsets.only(left: 50)),

                  ClipOval(
                    child: Container(
                      padding: EdgeInsets.only(left: 2),
                      color: const Color.fromARGB(115, 158, 158, 158),
                      child: Image.asset("Assets/img/chevron.png", width: 30),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
