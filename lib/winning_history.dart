import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';
class winning_history extends StatefulWidget implements AbstractPage {
  @override
  _winning_historyState createState() => _winning_historyState();
  void BuildPage()
  {

  }
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

