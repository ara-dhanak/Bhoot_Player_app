import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/ShowAlertDialog.dart';
import 'package:flutter_app/reset_pwd.dart';
import 'AbstractClassFactory.dart';

class myaccount extends StatefulWidget implements AbstractPage {
  var date;
  @override
  _myaccountState createState() => _myaccountState();
  //request/response  obj;
  void BuildPage() {
    //REST API calls required for your page
  }
}

class _myaccountState extends State<myaccount> {
  get date => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Account details"),
          //backgroundColor: Colors.blue.shade400,
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(
            child: Column(
                children: [
                  new Image.asset('images/goldb.png', width: 300, height: 300, alignment: Alignment.center,),
                  ElevatedButton(
                      child: Text("Transfer Diamonds"), onPressed: () {
                    Future.delayed(Duration.zero, () =>
                        showAlertDialog(
                            context, "Diamonds Transfer Successful!!!"));
                  }
                  ),
                  //Need to create a function in buildpage so onPress will b trigere
                  ElevatedButton(
                      child: Text("Reset Password"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Colors.green)
                      ),
                       onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => reset_password()));

                      }


                  ),
                ]
            )
        )
    );
  }


}


