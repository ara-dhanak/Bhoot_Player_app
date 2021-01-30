import 'package:flutter/material.dart';
class game_history extends StatefulWidget {
  @override
  _game_historyState createState() => _game_historyState();
}

class _game_historyState extends State<game_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Here is your Game history!!!"),
    backgroundColor: Colors.cyanAccent.shade400,
        )
    );
  }
}
