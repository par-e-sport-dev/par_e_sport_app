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
                "Mises à jours importante",
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
                        "Assets/img/img_transfert/optictexas.png",
                        fit: BoxFit.cover,
                        width: 120,
                        height: 180,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "OpTic Texas se sépare de Pred",
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
                        "Assets/img/img_transfert/perkz.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Perkz va quitter The Ruddy Sack",
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
                        "Assets/img/img_transfert/croco.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Croco de retour chez OK BRION",
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
                        "Assets/img/img_transfert/gentlemates.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "Gentle Mates mise sur Yujin en RLCS",
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
                        "Assets/img/img_transfert/theruddy.png",
                        width: 120,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Container(
                      width: 130,
                      child: Text(
                        "The Ruddy Sack dévoile son nouveau roster avec Gaëthan",
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
