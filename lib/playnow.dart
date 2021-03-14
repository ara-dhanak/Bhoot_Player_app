import 'package:editable/editable.dart';
import 'package:flutter/material.dart';

import 'AbstractClassFactory.dart';
/// Create a Key for EditableState
final _editableKey = GlobalKey<EditableState>();
List cols = [
  {"title": 'Serial No', 'widthFactor': 0.2, 'key': 'Sno'},
  {"title": 'Patti', 'widthFactor': 0.2, 'key': 'Patti'},
  {"title": 'Single', 'widthFactor': 0.2, 'key': 'Single'},
  {"title": 'Diamonds', 'key': 'Diamonds'},
];
List rows = [];
class playnow extends StatefulWidget implements AbstractPage {
  @override
  _playnowState createState() => _playnowState();

  void BuildPage() {
//REST API calls required for your page
  }
}

class _playnowState extends State<playnow> {

  void _addnewRow() {
    setState(() {
      _editableKey.currentState.createRow();
    });
    
    void submit() {

    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(" Lets Play Beyond Reality!!! "),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () {
                _addnewRow();
              },
              child: Text(
                "Add",
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            FlatButton(
              textColor: Colors.white,
              onPressed: () {
                submit();
              },
              child: Text(
                "Submit",
              ),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),


          ],
        ),


        //   bottomNavigationBar: BottomNavigationBar(
        //       currentIndex: 0,
        //     type: BottomNavigationBarType.fixed,
        //    // onTap:  Navigator.push(context, MaterialPageRoute(builder: (context) => submit()),
        //       items: [
        //   BottomNavigationBarItem(icon:new Icon(Icons.arrow_circle_up_rounded),backgroundColor: Colors.white, label: "Submit"
        //   ),  ],
        // ),


        body: Center(

          child: Editable(
              key: _editableKey,
              //Assign Key to Widget
              columns: cols,
              rows: rows,
              zebraStripe: true,
              stripeColor2: Colors.grey[200],
              borderColor: Colors.blueGrey,
              columnRatio: 0.2),
        ),
      );
    }
  }


