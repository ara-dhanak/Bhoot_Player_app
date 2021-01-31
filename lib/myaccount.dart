import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class myaccount  extends StatefulWidget implements AbstractPage  {
  @override
  _myaccountState createState() => _myaccountState();
  void BuildPage()
  {

  }
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
