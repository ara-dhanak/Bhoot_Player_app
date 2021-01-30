import 'package:flutter/material.dart';


class myaccount  extends StatefulWidget {
  @override
  _myaccountState createState() => _myaccountState();
}

class _myaccountState extends State<myaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account details:"),
        backgroundColor: Colors.cyanAccent.shade400,
      ),
    );
  }
}
