import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String username = "Users12548";

  void _changeUsername() async {
    final newName = await showDialog<String>(
      context: context,
      builder: (context) {
        TextEditingController controller = TextEditingController(
          text: username,
        );
        return AlertDialog(
          title: Text("Changer le pseudo"),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(hintText: "Nouveau pseudo"),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, controller.text),
              child: Text("Valider"),
            ),
          ],
        );
      },
    );

    if (newName != null && newName.trim().isNotEmpty) {
      setState(() => username = newName.trim());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf4f4f8),
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: true,
        backgroundColor: Color(0xFF05001e),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Photo de profil avec halo
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [Colors.blue.shade200, Colors.transparent],
                  radius: 0.8,
                ),
              ),
              padding: const EdgeInsets.all(5),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(
                  "Assets/img/img_friends/profile.png",
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Pseudo et bouton
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  username,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                IconButton(onPressed: _changeUsername, icon: Icon(Icons.edit)),
              ],
            ),
            const SizedBox(height: 30),

            // Statistiques
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildStat("Points", "1240"),
                    _buildStat("Niveau", "15"),
                    _buildStat("Paris", "53"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        Text(label, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
      ],
    );
  }
}
