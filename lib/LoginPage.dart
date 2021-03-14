
import 'package:flutter/material.dart';
import 'package:flutter_app/game_history.dart';
import 'Models/User_Detail_Model.dart';
import "ShowAlertDialog.dart";
import "Request.dart";
import 'LandingPage.dart';
TextEditingController playername = new TextEditingController();
TextEditingController playerpassword = new TextEditingController();
TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

class LoginPage   extends StatefulWidget{
  @override
  LoginPage_State createState() => LoginPage_State();
  void BuildPage() {
//REST API calls required for your page
  }

}

class LoginPage_State extends State<LoginPage> {
  void LoginState() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: playername,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "User Name",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final passwordField = TextField(
      controller: playerpassword,
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    final loginbuton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),

      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () async{
          if (playername.text == "") {
            Future.delayed(Duration.zero,
                    () => showAlertDialog(context, "Please Enter UserName"));
          } else if (playerpassword.text == "") {
            Future.delayed(Duration.zero,
                    () => showAlertDialog(context, "Please Enter Password"));
          } else {
           bool result = await validateLogin(playername.text, playerpassword.text);
           //Console.log(result);
            //print ('The Result is -'+ result.toString());
            if (result)
              {
                UserDetailModel user_detail=await User_Detail_API();//this call for the first tme login subsequent calls happening in landing page
                Navigator.push(
                    context,MaterialPageRoute(builder: (context) => bhoot_bottom_nav()));
              }
            else
              {
                Future.delayed(Duration.zero,
                        () => showAlertDialog(context, "Login Failed "));
              }
          }
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          " Welcome to BhootNath - Login",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Ready to Play?",
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 35.0),
                emailField,
                SizedBox(height: 15.0),
                passwordField,
                SizedBox(
                  height: 25.0,
                ),
                loginbuton,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



