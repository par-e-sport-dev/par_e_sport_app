import 'package:flutter/material.dart';

class LiveCurrent extends StatelessWidget {
  const LiveCurrent({super.key});

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
              "En direct",
              style: TextStyle(fontFamily: "Inter", fontSize: 25),
            ),
          ),

          Row(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "Assets/img/img_match/gentle_mates.png",
                    height: 100,
                    width: 170,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    color: const Color.fromARGB(83, 0, 0, 0),
                    height: 100,
                    width: 170,
                  ),

                  Positioned(
                    left: 55,
                    top: 40,
                    child: Text(
                      "Regarder",
                      style: TextStyle(
                        fontFamily: "Inter",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 20),
                    width: 190,

                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Gentle Mates",
                      style: TextStyle(fontFamily: "Inter", fontSize: 15),
                    ),
                  ),

                  Text("Description sur le match"),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: const Color.fromARGB(186, 158, 158, 158),
                      padding: EdgeInsets.only(
                        top: 2,
                        bottom: 2,
                        right: 5,
                        left: 5,
                      ),
                      child: Text(
                        "Valorant",
                        style: TextStyle(fontFamily: "Inter"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Padding(padding: EdgeInsets.only(top: 20)),

          Row(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "Assets/img/img_match/mandatory.png",
                    height: 100,
                    width: 170,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    color: const Color.fromARGB(83, 0, 0, 0),
                    height: 100,
                    width: 170,
                  ),

                  Positioned(
                    left: 55,
                    top: 40,
                    child: Text(
                      "Regarder",
                      style: TextStyle(
                        fontFamily: "Inter",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 20),
                    width: 190,

                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Mandatory",
                      style: TextStyle(fontFamily: "Inter", fontSize: 15),
                    ),
                  ),

                  Text("Description sur le match"),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: const Color.fromARGB(186, 158, 158, 158),
                      padding: EdgeInsets.only(
                        top: 2,
                        bottom: 2,
                        right: 5,
                        left: 5,
                      ),
                      child: Text(
                        "League of Legends",
                        style: TextStyle(fontFamily: "Inter"),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Padding(padding: EdgeInsets.only(top: 20)),

          Row(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "Assets/img/img_match/team_bds.png",
                    height: 100,
                    width: 170,
                    fit: BoxFit.cover,
                  ),

                  Container(
                    color: const Color.fromARGB(83, 0, 0, 0),
                    height: 100,
                    width: 170,
                  ),

                  Positioned(
                    left: 55,
                    top: 40,
                    child: Text(
                      "Regarder",
                      style: TextStyle(
                        fontFamily: "Inter",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10, bottom: 20),
                    width: 190,

                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Team BDS",
                      style: TextStyle(fontFamily: "Inter", fontSize: 15),
                    ),
                  ),

                  Text("Description sur le match"),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: const Color.fromARGB(186, 158, 158, 158),
                      padding: EdgeInsets.only(
                        top: 2,
                        bottom: 2,
                        right: 5,
                        left: 5,
                      ),
                      child: Text(
                        "Rocket League",
                        style: TextStyle(fontFamily: "Inter"),
                      ),
                    ),
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
