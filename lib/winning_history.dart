import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class winning_history extends StatefulWidget implements AbstractPage {
  @override
  _winning_historyState createState() => _winning_historyState();

  void BuildPage() {
//REST API calls required for your page
  }
}

class _winning_historyState extends State<winning_history> {

  bool isSwitch = false;
  var toggle_msg = 'Diamonds Unclaimed';

  void switch_toggle(bool value)
  {

    if(isSwitch == false) {
      setState(() {
        isSwitch = true;
        toggle_msg = "Diamonds Claimed";
      });
      print(" Diamonds Claimed");
    }
        else{
          setState(() {
            isSwitch = false;
            toggle_msg = "Diamonds Unclaimed";
          });
          print("Diamonds Unclaimed");

    }

      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hola! Winning Results are here!!!"),
        backgroundColor: Colors.cyanAccent.shade400,
      ),

  body:Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [Transform.scale(scale: 1.2,
    child: Switch(
      onChanged: switch_toggle,
      value: isSwitch,
      activeColor: Colors.blue,
      activeTrackColor: Colors.yellow,
      inactiveThumbColor: Colors.blue,
      inactiveTrackColor: Colors.yellowAccent,


    )
    ),
      Text('$toggle_msg', style: TextStyle(fontSize: 10
      ),)

    ],
  ) ,


    );
  }
}

