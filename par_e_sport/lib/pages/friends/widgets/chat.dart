import 'package:flutter/material.dart';

class ChatFriends extends StatefulWidget {
  const ChatFriends({super.key});

  @override
  State<ChatFriends> createState() => _ChatFriendsState();
}

class _ChatFriendsState extends State<ChatFriends> {
  final List<Map<String, dynamic>> _messages = [
    {'text': 'Salut !', 'isMe': false},
    {'text': 'Yo, ça va ?', 'isMe': true},
    {'text': 'Grave, et toi ?', 'isMe': false},
  ];

  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add({'text': text, 'isMe': true});
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,

        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 80),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset("Assets/img/profile.png", width: 55),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Pseudo"),
                  ),
                ),

                Spacer(),

                Image.asset("Assets/img/phone.png", width: 30),

                Padding(padding: EdgeInsets.only(right: 10)),

                Image.asset("Assets/img/cam.png", width: 40),

                Padding(padding: EdgeInsets.only(right: 20)),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final message = _messages[_messages.length - 1 - index];
                return Align(
                  alignment:
                      message['isMe']
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.7,
                    ),
                    decoration: BoxDecoration(
                      color: message['isMe'] ? Colors.blue : Colors.grey[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message['text'],
                      style: TextStyle(
                        color: message['isMe'] ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1),
          Container(
            color: Colors.white,
            padding: EdgeInsets.only(bottom: 40),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Écrire un message...",
                      border: InputBorder.none,
                    ),
                    onSubmitted: (_) => _sendMessage(),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: _sendMessage,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
