import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class bhoot_bottom_nav extends StatefulWidget {
  @override
  _bhoot_bottom_navState createState() => _bhoot_bottom_navState();
}

enum PageNumber {
  Playnow,
  GameHistory,
  WinningHistory,
  MyAccount
}

class _bhoot_bottom_navState extends State<bhoot_bottom_nav> {

  PageNumber _currentpage = PageNumber.Playnow;
  final List<PageNumber> _children = [
    PageNumber.Playnow,
    PageNumber.GameHistory,
    PageNumber.WinningHistory,
    PageNumber.MyAccount
  ];


//We have to create the page on demand . No need to create the concrete objects of all the objects  on 2nd page

  void ontouchedbar(int index) {
    setState(() {
      _currentpage = _children[index];
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: new Text("Bhootnath Demo Page for buttons"),
        ),
        body: AbstractPage.CreatePage(_currentpage),
        //_children[_currentIndex], //This means which ever button will press from bottomnbar, the page will appear
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: ontouchedbar,
            currentIndex: _currentpage.index,
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
        )
    );
  }
}