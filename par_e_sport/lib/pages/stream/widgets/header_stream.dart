import 'package:flutter/material.dart';

class HeaderStream extends StatelessWidget {
  const HeaderStream({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, right: 20, left: 20),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Suivis",
              style: TextStyle(fontFamily: "Inter", fontSize: 25),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                color: Color(0xEEE5E5E5),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/img/img_equipes/g2_esport.png",
                              height: 70,
                              width: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "G2 Esport",
                            style: TextStyle(fontFamily: "Inter"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/img/img_equipes/fnatic.png",
                              height: 70,
                              width: 70,
                            ),
                          ),
                          Text("Fnatic", style: TextStyle(fontFamily: "Inter")),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/img/img_equipes/sk_gaming.png",
                              width: 70,
                            ),
                          ),
                          Text(
                            "SK Gaming",
                            style: TextStyle(fontFamily: "Inter"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/img/img_equipes/team_heretics.png",
                              width: 70,
                            ),
                          ),
                          Text(
                            "Team Heretics",
                            style: TextStyle(fontFamily: "Inter"),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ClipOval(
                            child: Image.asset(
                              "Assets/img/img_equipes/team_vitality.png",
                              width: 70,
                            ),
                          ),
                          Text(
                            "Team Vitality",
                            style: TextStyle(fontFamily: "Inter"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
