import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class playnow extends StatefulWidget implements AbstractPage {
  @override
  _playnowState createState() => _playnowState();

  void BuildPage() {
//REST API calls required for your page
  }
}

class _playnowState extends State<playnow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(" Game is On! Keep Playing!!!:"),
            backgroundColor: Colors.cyanAccent.shade400
        )
    );
  }
}
