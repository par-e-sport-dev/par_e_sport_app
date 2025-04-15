import 'package:flutter/material.dart';

class Research extends StatefulWidget {
  const Research({super.key});

  @override
  State<Research> createState() => _Research();
}

class _Research extends State<Research> {
  String text_search = "";
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Padding(
        padding: EdgeInsets.only(top: 30, right: 20, left: 20),

        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: TextField(
            focusNode: _focusNode,
            controller: _controller,
            decoration: InputDecoration(
              filled: true,
              focusColor: Color(0xEEE5E5E5),
              hintText: "Rechercher un stream ou une equipe...",
              suffixIcon: Icon(Icons.search, size: 30),
            ),
            onChanged: (value) {
              setState(() {
                text_search = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
