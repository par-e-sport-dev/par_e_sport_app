import 'package:flutter/material.dart';

class PariSection extends StatelessWidget {
  const PariSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: ClipRRect(
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "Fragster Challenger Series",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "LEC Spring 2025\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "Fragster Challenger Series",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "LEC Spring 2025\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "Fragster Challenger Series",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "LEC Spring 2025\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "Fragster Challenger Series",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "LEC Spring 2025\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "Fragster Challenger Series",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
                            child: Column(
                              children: [
                                Padding(padding: EdgeInsets.only(bottom: 15)),
                                Text(
                                  "LEC Spring 2025\n",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
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
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        color: Color.fromARGB(255, 1, 12, 172),
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
                                Padding(padding: EdgeInsets.only(top: 15)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "2.13",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    SizedBox(width: 12),
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Container(
                                        color: Colors.orange,
                                        child: Padding(
                                          padding: EdgeInsets.all(5),
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
                                    SizedBox(width: 12),
                                    Container(
                                      color: Color.fromARGB(108, 16, 1, 88),
                                      child: Text(
                                        "1.51",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(bottom: 15)),
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
    );
  }
}
