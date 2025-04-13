import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),

            child: Container(
              color: Color(0x626A6A6D),
              child: Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset("Assets/img/classement.png", width: 50),
              ),
            ),
          ),

          Spacer(),

          Text("100", style: TextStyle(fontFamily: "Inter")),
          SizedBox(width: 10),
          Image.asset("Assets/img/toffi.png", width: 30),
        ],
      ),
    );
  }
}
