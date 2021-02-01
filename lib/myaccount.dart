import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class myaccount extends StatefulWidget implements AbstractPage {
  @override
  _myaccountState createState() => _myaccountState();
  //request/response  obj;
  void BuildPage() {
    //REST API calls required for your page
    
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
      backgroundColor: Colors.white,

      floatingActionButton: FloatingActionButton(
        child: Text("Transfer"),
      ),

    );
  }
}
