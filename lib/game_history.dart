import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class game_history extends StatefulWidget implements AbstractPage {
  @override
  _game_historyState createState() => _game_historyState();
//request/response  obj;
  void BuildPage() {
//REST API calls required for your page
  }
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
