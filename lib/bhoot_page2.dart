import 'package:flutter/material.dart';
import 'package:flutter_app/game_history.dart';
import 'package:flutter_app/myaccount.dart';
import 'package:flutter_app/playnow.dart';
import 'package:flutter_app/winning_history.dart';

class bhoot_bottom_nav extends StatefulWidget {
  @override
  _bhoot_bottom_navState createState() => _bhoot_bottom_navState();
}

class _bhoot_bottom_navState extends State<bhoot_bottom_nav> {
int _currentIndex = 0;
final List<Widget> _children = [
  playnow(),
  game_history(),
  winning_history(),
  myaccount()
];

void ontouchedbar(int index)
{
  setState(() {
    _currentIndex = index;
  });
}


  @override


  Widget build(BuildContext context) {
    return  new Scaffold(
        appBar: AppBar(
          title: new Text("Bhootnath Demo Page for buttons"),
        ),
        body: _children[_currentIndex], //This means which ever button will press from bottomnbar, the page will appear
        bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed,
            onTap: ontouchedbar,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.play_arrow),
                  backgroundColor: Colors.blueAccent,
                  label: "Play Now"),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.history),
                  backgroundColor: Colors.blueAccent,
                  label: "Game History"),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.card_giftcard),
                  backgroundColor: Colors.blueAccent,
                  label: " Winning History"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin_rounded),
                  backgroundColor: Colors.blueAccent,
                  label: "MyAccount")
            ]
          // onTap: (int index) => debugPrint("Call required method or page: $index"),
        )
    );
  }
}