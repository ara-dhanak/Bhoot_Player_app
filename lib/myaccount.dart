import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ShowAlertDialog.dart';
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

  void reset_pwd() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Account details:"),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      child: Text("Transfer Diamonds"), onPressed: () {
                    Future.delayed(Duration.zero, () =>
                        showAlertDialog(
                            context, "Diamonds Transfer Successful!!!"));
                  }

                  ),

                  //Need to create a function in buildpage so onPress will b trigere
                  ElevatedButton(
                      onPressed: reset_pwd, child: Text("Reset Password"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.green)
                      )
                  ),
                ]
            )
        )
    );
  }
}


