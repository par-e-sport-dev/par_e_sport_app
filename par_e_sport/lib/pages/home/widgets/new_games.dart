import 'package:flutter/material.dart';

class new_games extends StatelessWidget {
  const new_games({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Nouveaux Jeux",
                  style: TextStyle(fontSize: 22, fontFamily: "Inter"),
                ),
                SizedBox(width: 20),
                ClipOval(
                  child: Container(
                    color: const Color.fromARGB(160, 158, 158, 158),
                    child: Image.asset("Assets/img/chevron.png", width: 30),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "Assets/img/img_games/assassin_creed.png",
                          width: 120,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: 130,
                        child: Text(
                          "Assasin's Creed: Shadows",
                          style: TextStyle(fontFamily: "Inter"),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "Assets/img/img_games/doom.png",
                          width: 120,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: 130,
                        child: Text(
                          "Doom: The Dark Ages",
                          style: TextStyle(fontFamily: "Inter"),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "Assets/img/img_games/clair_obscur.png",
                          width: 120,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: 130,
                        child: Text(
                          "Clair Obscur: Expedition 33",
                          style: TextStyle(fontFamily: "Inter"),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "Assets/img/img_games/gta.png",
                          width: 120,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: 130,
                        child: Text(
                          "Grand Thef Auto VI\n",
                          style: TextStyle(fontFamily: "Inter"),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "Assets/img/img_games/metal_gear.png",
                          width: 120,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Container(
                        width: 130,
                        child: Text(
                          "Metal Gear Solid Delta: Snake Eater",
                          style: TextStyle(fontFamily: "Inter"),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
