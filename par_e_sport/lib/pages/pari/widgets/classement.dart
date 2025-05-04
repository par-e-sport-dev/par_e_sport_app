import 'dart:math';
import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/appbar.dart';

class Classement extends StatelessWidget {
  final List<Map<String, dynamic>> players = List.generate(20, (index) {
    return {"name": "Player${index + 1}", "points": Random().nextInt(1000)};
  });

  @override
  Widget build(BuildContext context) {
    players.sort((a, b) => b['points'].compareTo(a['points']));

    return Scaffold(
      appBar: MyAppBar(),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Classement",
                style: TextStyle(fontFamily: "Inter", fontSize: 25),
              ),
            ),

            Padding(padding: EdgeInsets.only(top: 20)),

            SizedBox(
              height: 700,
              child: ListView.builder(
                itemCount: players.length,
                itemBuilder: (context, index) {
                  final player = players[index];
                  if (index > 2) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 221, 221, 221),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "#${index + 1}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            player['name'],
                            style: TextStyle(fontFamily: "Inter"),
                          ),
                          Text(
                            "${player['points']}   toffis",
                            style: TextStyle(fontFamily: "Inter"),
                          ),
                        ],
                      ),
                    );
                  }
                  ;
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(181, 238, 205, 19),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "#${index + 1}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          player['name'],
                          style: TextStyle(fontFamily: "Inter"),
                        ),
                        Text(
                          "${player['points']}   toffis",
                          style: TextStyle(fontFamily: "Inter"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
