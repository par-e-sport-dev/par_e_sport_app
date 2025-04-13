import 'package:flutter/material.dart';

class PariSection extends StatelessWidget {
  const PariSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: Color(0x626A6A6D),
          child: Column(
            children: [
              Text(
                "Match à venir :",
                textAlign: TextAlign.start,
                style: TextStyle(fontFamily: "Inter", fontSize: 20),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          color: Color.fromARGB(255, 5, 0, 30),
                          child: Column(
                            children: [
                              Text(
                                "Fragster Challenger Series",
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "ARCRED",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Container(
                                    color: Color.fromARGB(255, 15, 1, 88),
                                    child: Text(
                                      "18:00",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Text(
                                    "Johnny Speeds",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Container(
                                    color: Color.fromARGB(108, 16, 1, 88),
                                    child: Text(
                                      "2.13",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    color: Color.fromARGB(108, 16, 1, 88),
                                    child: Text(
                                      "PARIER",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Container(
                                    color: Color.fromARGB(108, 16, 1, 88),
                                    child: Text(
                                      "1.51",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(color: Color(0x6C05001E)),
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
