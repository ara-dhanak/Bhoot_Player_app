import 'package:flutter/material.dart';


class bhoot_bottom_nav extends StatefulWidget {
  @override
  _bhoot_bottom_navState createState() => _bhoot_bottom_navState();
}

class _bhoot_bottom_navState extends State<bhoot_bottom_nav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bhootnath Demo Page for buttons"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.play_arrow),
                  backgroundColor: Colors.blueAccent,
                  label: "Play Now"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.history),
                  backgroundColor: Colors.blueAccent,
                  label: "Game History"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_giftcard),
                  backgroundColor: Colors.blueAccent,
                  label: " Winning History"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_pin_rounded),
                  backgroundColor: Colors.blueAccent,
                  label: "MyAccount")
            ]
          // onTap: (int index) => debugPrint("Call required method or page: $index"),
        ));
  }
}

class BizzCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BizCard"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[_getCard()],
        ),
      ),
    );
  }
}

Container _getCard() {
  return Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(6)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Madhusudan S",
          style: TextStyle(
              fontSize: 20.9, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text("sahnnu@yahoo.com"),
        IconButton(
            icon: Icon(Icons.person),
            onPressed: () => debugPrint("Import image"))
      ],
    ),
  );
}

class ScaffoldExample extends StatelessWidget {
  var date = "01-27-2021";

  _tapforcam() => debugPrint("Click on camera");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bhootnath Submit Page"),
          centerTitle: true,
          backgroundColor: Colors.amber.shade800,
          actions: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () => debugPrint("Navigate to home page")),
            IconButton(
                icon: Icon(Icons.perm_scan_wifi_outlined),
                color: Colors.pinkAccent,
                onPressed: () => _tapforcam)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.amber,
          child: Icon(Icons.monetization_on),
          onPressed: () => debugPrint("Refreshed"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.send_rounded),
                backgroundColor: Colors.limeAccent,
                label: "Transfer All"),
            BottomNavigationBarItem(
                icon: Icon(Icons.weekend_outlined),
                backgroundColor: Colors.pink,
                label: "ResetMode")
          ],
          onTap: (int index) => debugPrint("Tapped item:$index"),
        ),
        backgroundColor: Colors.blue.shade300,
        body: Container(
          alignment: Alignment.topLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                child: Text(
                  "Date:  $date",
                  style: TextStyle(fontSize: 27.9, fontWeight: FontWeight.bold),
                ),
                onTap: () => debugPrint("Date updated"),
              )
            ],
          ),

//Give padding between date and appbarca
        ));
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Home_app extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.deepOrange,
        shadowColor: Colors.blue,
        child: Center(
          child: Text(
            "Hello Home!",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 30.9,
            ),
          ),
        ));
  }
}
