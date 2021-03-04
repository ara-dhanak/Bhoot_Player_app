import 'package:editable/editable.dart';
import 'package:flutter/material.dart';

import 'AbstractClassFactory.dart';

/// Create a Key for EditableState
final _editableKey = GlobalKey<EditableState>();
List cols = [
  {"title": 'Serial No', 'widthFactor': 0.2, 'key': 'Sno'},
  {"title": 'Patti', 'widthFactor': 0.1, 'key': 'Patti'},
  {"title": 'Single', 'widthFactor': 0.1, 'key': 'Single'},
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Game is On! Keep Playing!!!:"),
        backgroundColor: Colors.cyanAccent.shade400,
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {_addnewRow();},
            child: Text("Add",),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
        // leading: Icon(
        //     onPressed: () => _addnewRow(),
        //     icon: Icon(Icons.add),
        //     label: Text(
        //       'Add',
        //       style: TextStyle(fontWeight: FontWeight.bold),
        //     ))
      ),
      body: Editable(
          key: _editableKey,
          //Assign Key to Widget
          columns: cols,
          rows: rows,
          zebraStripe: true,
          stripeColor2: Colors.grey[200],
          borderColor: Colors.blueGrey,
          columnRatio: 0.2
      ),
    );
  }
}