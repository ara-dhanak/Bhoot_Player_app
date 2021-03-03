import 'package:flutter/material.dart';
import 'package:flutter_app/Models/User_Detail_Model.dart';
import 'AbstractClassFactory.dart';
import 'Request.dart';
class bhoot_bottom_nav extends StatefulWidget {
  @override
  _bhoot_bottom_navState createState() => _bhoot_bottom_navState();
}

class _bhoot_bottom_navState extends State<bhoot_bottom_nav> {

  String user_name="Guest";
  UserDetailModel data;
  PageNumber _currentpage = PageNumber.Playnow;

  final List<PageNumber> _children = [

    PageNumber.Playnow,
    PageNumber.GameHistory,
    PageNumber.WinningHistory,
    PageNumber.MyAccount,
    PageNumber.played_history
  ];
//We have to create the page on demand . No need to create the concrete objects of all the objects  on 2nd page

  void ontouchedbar(int index) {
    setState(() {
      _currentpage = _children[index];
    });
  }
 Future <UserDetailModel> User_API()async{
    final UserDetailModel user_detail= await User_Detail_API();
   return user_detail;
  }
  void User_get() {
    setState(() async {
     //temp_get();
      Future data=User_API();
    });
  }
  void temp_get(){
    setState(() {
      user_name=data.supervisorName;
    });
  }

  @override
  Widget build(BuildContext context) {
    //User_get();
    return new Scaffold(

        appBar: AppBar(
          title: new Text("Welcome ${user_name}"),
        ),
        body: Column(children :[Expanded(child:AbstractPage.CreatePage(_currentpage))]),
            //_children[_currentIndex], //This means which ever button will press from bottomnbar, the page will appear
        bottomNavigationBar: BottomNavigationBar(

            type: BottomNavigationBarType.fixed,
            onTap:ontouchedbar, // Shoud have used Material Navigation # Techincal Debt //See LoginPage.dart for the implementation
            currentIndex: _currentpage.index,
            items: [
              BottomNavigationBarItem(
                  icon: new Icon(Icons.play_arrow),
                  backgroundColor: Colors.blueAccent,
                  label: "Play"),


              BottomNavigationBarItem(
                  icon: new Icon(Icons.history),
                  backgroundColor: Colors.blueAccent,
                  label: "Game_History"),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.card_giftcard),
                  backgroundColor: Colors.blueAccent,
                  label: "Winners"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin_rounded),
                  backgroundColor: Colors.blueAccent,
                  label: "MyAccount"),
              BottomNavigationBarItem(
                  icon: new Icon(Icons.games),
                  backgroundColor: Colors.blueAccent,
                  label: "played History"),
            ]
        )
    );
  }
}