import 'package:flutter/material.dart';
import 'package:par_e_sport/pages/pari/widgets/classement.dart';

class TopSection extends StatelessWidget {
  TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 30),
      child: Row(
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
                  child: Image.asset("Assets/img/classement.png", width: 50),
                ),
              ),
            ),
          ),

          Spacer(),

          CoinsSection(coins: 100),
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
        Image.asset("Assets/img/toffi.png", width: 30),
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
