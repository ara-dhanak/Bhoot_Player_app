import 'package:flutter/material.dart';
import 'package:flutter_app/Models/User_Detail_Model.dart';
import 'AbstractClassFactory.dart';
import 'Request.dart';

class bhoot_bottom_nav extends StatefulWidget {
  @override
  _bhoot_bottom_navState createState() => _bhoot_bottom_navState();
}
class _bhoot_bottom_navState extends State<bhoot_bottom_nav> {
  String user_name = "Guest";
  String penciler_name = "Imran";

  PageNumber _currentpage = PageNumber.GameHistory;
  UserDetailModel user_detail;

  final List<PageNumber> _children = [
    PageNumber.GameHistory,
    PageNumber.Playnow,
    PageNumber.WinningHistory,
    PageNumber.played_history,
    PageNumber.MyAccount
  ];

//We have to create the page on demand . No need to create the concrete objects of all the objects  on 2nd page

  void ontouchedbar(int index) {
    if (index==5)
    {
      Navigator.pop(context);
    }
    setState(() {
      User_API();
      _currentpage = _children[index];
    });
  }

  Future<UserDetailModel> User_API() async {
    user_detail = await User_Detail_API(context);
  }

  @override
  Widget build(BuildContext context) {
    //User_API();
    return new Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              new Text("Welcome ${Global_User_Details["user_name"]} ! Penciler name-${Global_User_Details["supervisorName"]}"),
              new Padding(padding: new EdgeInsets.all(5.0)),
              new Text("Diamond-${Global_User_Details["diamond"]}"),

            ],

          ),

          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(
          //       Icons.monetization_on_rounded,
          //       color: Colors.red,
          //     ),
          //     onPressed: () {
          //       // do something
          //     },
          //   )
          // ],
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
            children: [Expanded(child: AbstractPage.CreatePage(_currentpage))]),
        //_children[_currentIndex], //This means which ever button will press from bottomnbar, the page will appear
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: ontouchedbar,
            // Shoud have used Material Navigation # Techincal Debt //See LoginPage.dart for the implementation
            currentIndex: _currentpage.index,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.history),
                  backgroundColor: Colors.blueAccent,
                  label: "Game \nHistory"),
              //label: "Game History"
              BottomNavigationBarItem(
                  icon: new Icon(Icons.play_arrow),
                  backgroundColor: Colors.blueAccent,
                  label: "Play \nNow"),
              //label: "Play"
              BottomNavigationBarItem(
                  icon: new Icon(Icons.card_giftcard),
                  backgroundColor: Colors.blueAccent,
                  label: "Winning \n History"),
              //label: "Winners"
              BottomNavigationBarItem(
                  icon: new Icon(Icons.games),
                  backgroundColor: Colors.blueAccent,
                  label: "Played \nHistory"),
              //label: "Played History"
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin_rounded),
                  backgroundColor: Colors.blueAccent,
                  label: "MyAccount \n    Details"),
              //label: "MyAccount"
              BottomNavigationBarItem(
                  icon: Icon(Icons.logout),
                  backgroundColor: Colors.blueAccent,
                  label: "Logout")
            ]));
  }
}
