import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart' as carousel_slider;

class MatchToSee extends StatelessWidget {
  const MatchToSee({super.key});

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

          SizedBox(
            height: 190,
            child: CarouselView(
              itemExtent: MediaQuery.sizeOf(context).width - 32,
              itemSnapping: true,

              children: [
                Image.asset("Assets/img/img_match/9ine.png"),
                Image.asset("Assets/img/img_match/brute.png"),
                Image.asset("Assets/img/img_match/ultimates.png"),
                Image.asset("Assets/img/img_match/wild.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
