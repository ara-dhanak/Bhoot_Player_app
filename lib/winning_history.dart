import 'package:flutter/material.dart';

class winning_history extends StatefulWidget {
  @override
  _winning_historyState createState() => _winning_historyState();
}

class _winning_historyState extends State<winning_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola! Winning Results are here!!!"),
        backgroundColor: Colors.cyanAccent.shade400,

      ),
    );
  }
}

