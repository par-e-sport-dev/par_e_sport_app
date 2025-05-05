import 'package:flutter/material.dart';

class UpdatesGames extends StatelessWidget {
  const UpdatesGames({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Mises à jour importantes",
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
                        "Assets/img/img_updates/minecraft.png",
                        fit: BoxFit.cover,
                        width: 120,
                        height: 180,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Minecraft\n",
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
                        "Assets/img/img_updates/jedi.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Jedi Survivor\n",
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
                        "Assets/img/img_updates/eve_vanguard.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "EVE Vanguard\n",
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
                        "Assets/img/img_updates/fs25.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Farming Simulator 25",
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
                        "Assets/img/img_updates/helldivers2.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Helldivers II\n",
                        style: TextStyle(fontFamily: "Inter"),
                        softWrap: true,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
