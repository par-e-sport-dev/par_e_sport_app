import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/pari/widgets/classement.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  double total = 100;
  bool IsSelectedEq1 = false;
  bool IsSelectedEq2 = false;

  void _showInputDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Paris pour :\nFragster Challenger Series",
            textAlign: TextAlign.center,
          ),
          content: SizedBox(
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (IsSelectedEq1 == false) {
                            IsSelectedEq1 = true;
                            Navigator.of(context).pop();
                            _showInputDialog();
                          } else if (IsSelectedEq1 == true) {
                            IsSelectedEq1 = false;
                            Navigator.of(context).pop();
                            _showInputDialog();
                          }
                          ;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          IsSelectedEq1
                              ? const Color.fromARGB(255, 221, 121, 27)
                              : Colors.grey[300],
                        ),
                        foregroundColor: WidgetStateProperty.all(
                          IsSelectedEq1 ? Colors.white : Colors.black,
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.blueGrey[100], // petit effet au clic
                        ),
                      ),

                      child: Text("ARCRED"),
                    ),
                    Spacer(),

                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (IsSelectedEq2 == false) {
                            IsSelectedEq2 = true;
                            Navigator.of(context).pop();
                            _showInputDialog();
                          } else if (IsSelectedEq2 == true) {
                            IsSelectedEq2 = false;
                            Navigator.of(context).pop();
                            _showInputDialog();
                          }
                          ;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          IsSelectedEq2
                              ? const Color.fromARGB(255, 221, 121, 27)
                              : Colors.grey[300],
                        ),
                        foregroundColor: WidgetStateProperty.all(
                          IsSelectedEq2 ? Colors.white : Colors.black,
                        ),
                        overlayColor: WidgetStateProperty.all(
                          Colors.blueGrey[100], // petit effet au clic
                        ),
                      ),

                      child: Text("Johny Speeds"),
                    ),
                  ],
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(hintText: "Faite vos paris !!"),
                  controller: _controller,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                IsSelectedEq1 = false;
                IsSelectedEq2 = false;

                /// Ferme la boîte de dialogue
              },
              child: Text("Annuler"),
            ),
            TextButton(
              onPressed: () {
                double? value = double.tryParse(
                  _controller.text,
                ); // Convertir la valeur entrée
                if (value != null) {
                  setState(() {
                    total -= value; // Soustraire la valeur au total
                  });
                }

                Navigator.of(context).pop();

                IsSelectedEq1 = false;
                IsSelectedEq2 = false; // Ferme la boîte de dialogue
              },
              child: Text("Parier"),
            ),
          ],
        );
      },
    );
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),

                child: HoverButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Classement()),
                    );
                  },
                  child: Container(
                    color: Color(0x626A6A6D),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        "Assets/img/classement.png",
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),

              Spacer(),

              CoinsSection(coins: total),
            ],
          ),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              //color: Color(0x626A6A6D),
              child: Column(
                children: [
                  Text(
                    "Match à venir :",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontFamily: "Inter", fontSize: 20),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_valorant.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "Fragster Challenger Series",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "ARCRED",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "18:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "Johnny Speeds",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(right: 10)),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_lol.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "LEC Spring 2025\n",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "Team Heretics",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "19:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "G2 Esports",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(padding: EdgeInsets.only(bottom: 10)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_rocket_league.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "Fragster Challenger Series",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "ARCRED",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "18:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "Johnny Speeds",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(right: 10)),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_r6.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "LEC Spring 2025\n",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "Team Heretics",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "19:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "G2 Esports",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(padding: EdgeInsets.only(bottom: 10)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_valorant.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "Fragster Challenger Series",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "ARCRED",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "18:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "Johnny Speeds",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(right: 10)),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_apex.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "LEC Spring 2025\n",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "Team Heretics",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "19:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "G2 Esports",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(padding: EdgeInsets.only(bottom: 10)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_lol.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "Fragster Challenger Series",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "ARCRED",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "18:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "Johnny Speeds",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(right: 10)),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_cs2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "LEC Spring 2025\n",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "Team Heretics",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "19:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "G2 Esports",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        Padding(padding: EdgeInsets.only(bottom: 10)),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_cs2.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "Fragster Challenger Series",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "ARCRED",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "18:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "Johnny Speeds",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(padding: EdgeInsets.only(right: 10)),

                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                width: 175,
                                color: Color.fromARGB(255, 5, 0, 30),

                                child: Stack(
                                  children: [
                                    Positioned.fill(
                                      child: Image.asset(
                                        'Assets/img/img_jeux/logo_rocket_league.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),

                                    Container(
                                      color: Color.fromARGB(120, 5, 0, 30),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                          Text(
                                            "LEC Spring 2025\n",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                padding: EdgeInsets.only(
                                                  left: 10,
                                                ),
                                                width: 50,
                                                child: Text(
                                                  "Team Heretics",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                child: Container(
                                                  color: Color.fromARGB(
                                                    255,
                                                    1,
                                                    12,
                                                    172,
                                                  ),
                                                  child: Text(
                                                    "19:00",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Container(
                                                width: 50,
                                                child: Text(
                                                  "G2 Esports",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10,
                                                  ),
                                                  softWrap: true,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top: 15),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "2.13",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  height: 40,
                                                  color: Colors.transparent,
                                                  child: ElevatedButton(
                                                    onPressed: _showInputDialog,

                                                    style: ElevatedButton.styleFrom(
                                                      foregroundColor:
                                                          Colors.black,
                                                      backgroundColor:
                                                          Colors
                                                              .transparent, // Retire la couleur du texte (texte noir ici)
                                                      shadowColor:
                                                          Colors
                                                              .transparent, // Retire l'ombre (pas d'effet d'élévation)
                                                      elevation:
                                                          0, // Enlève l'élévation (pas d'effet de levée)
                                                      padding: EdgeInsets.zero,
                                                      shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                              5,
                                                            ),
                                                      ), // Retire toute marge interne
                                                    ),
                                                    child: Container(
                                                      color: Colors.orange,
                                                      child: Padding(
                                                        padding: EdgeInsets.all(
                                                          5,
                                                        ),
                                                        child: Text(
                                                          "PARIER",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 20,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width: 12),
                                              Container(
                                                color: Color.fromARGB(
                                                  0,
                                                  15,
                                                  1,
                                                  88,
                                                ),
                                                child: Text(
                                                  "1.51",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              bottom: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
          ),
        ],
      ),
    );
  }
}

class CoinsSection extends StatefulWidget {
  final double coins;
  const CoinsSection({super.key, required this.coins});

  @override
  _CoinsSectionState createState() => _CoinsSectionState();
}

class _CoinsSectionState extends State<CoinsSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${widget.coins}", style: TextStyle(fontFamily: "Inter")),
        SizedBox(width: 10),
        Image.asset("Assets/img/toffi2.png", width: 35),
      ],
    );
  }
}

class HoverButton extends StatefulWidget {
  final VoidCallback onTap;
  final Widget child;

  const HoverButton({required this.onTap, required this.child, super.key});

  @override
  State<HoverButton> createState() => _HoverButton();
}

class _HoverButton extends State<HoverButton> {
  bool _IsHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:
          (_) => setState(() {
            _IsHover = true;
          }),
      onExit:
          (_) => setState(() {
            _IsHover = false;
          }),

      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedScale(
          scale: _IsHover ? 1.5 : 1.0,
          duration: Duration(milliseconds: 200),
          child: widget.child,
        ),
      ),
    );
  }
}
