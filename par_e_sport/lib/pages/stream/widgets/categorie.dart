import 'package:flutter/material.dart';

class CategoriePage extends StatelessWidget {
  const CategoriePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              "Catégorie",
              style: TextStyle(fontFamily: "Inter", fontSize: 25),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/img/img_jeux/csgo2.png",
                      width: 150,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Counter Strike 2",
                    style: TextStyle(fontFamily: "Inter", fontSize: 15),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(left: 20)),

              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/img/img_jeux/apex.png",
                      width: 150,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Apex Legends",
                    style: TextStyle(fontFamily: "Inter", fontSize: 15),
                  ),
                ],
              ),
            ],
          ),

          Padding(padding: EdgeInsets.only(top: 20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/img/img_jeux/r6.png",
                      width: 150,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Rainbow Six Siege",
                    style: TextStyle(fontFamily: "Inter", fontSize: 15),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(left: 20)),

              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/img/img_jeux/rocket_league.png",
                      width: 150,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Rocket League",
                    style: TextStyle(fontFamily: "Inter", fontSize: 15),
                  ),
                ],
              ),
            ],
          ),

          Padding(padding: EdgeInsets.only(top: 20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/img/img_jeux/league_of_legends.png",
                      width: 150,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "League of Legends",
                    style: TextStyle(fontFamily: "Inter", fontSize: 15),
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(left: 20)),

              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "Assets/img/img_jeux/valorant.png",
                      width: 150,
                      height: 190,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(
                    "Valorant",
                    style: TextStyle(fontFamily: "Inter", fontSize: 15),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
