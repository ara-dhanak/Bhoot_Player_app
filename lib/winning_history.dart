import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';
import 'Request.dart';
class winning_history extends StatefulWidget implements AbstractPage {
  @override
  _winning_historyState createState() => _winning_historyState();

  void BuildPage() {
//REST API calls required for your page
  getwinninghistory();
  }
}

class _winning_historyState extends State<winning_history> {
  @override
  Widget build(BuildContext context) {
    List<TableRow> CreateDynamicTableData() {
      List<TableRow> rows = [];
      rows.add(
        TableRow(
            decoration: BoxDecoration(
                color: Theme.of(context)
                    .accentColor // Background color for the row
              // To alternate between dark and light shades of the row's background color.
            ),
            children: [
              Column(children: [
                Text('Patti', style: TextStyle(fontSize: 20.0), softWrap: true)
              ]),
              Column(children: [
                Text('Diamond',
                    style: TextStyle(fontSize: 20.0), softWrap: true)
              ]),
              Column(children: [
                Text('Slot', style: TextStyle(fontSize: 20.0), softWrap: true)
              ]),
              Column(children: [
                Text('Type', style: TextStyle(fontSize: 20.0), softWrap: true)
              ]),
              Column(children: [
                Text('Reward', style: TextStyle(fontSize: 20.0), softWrap: true)
              ])
            ]),
      );

      for (int i = 0; i <= 20; i++) {
        rows.add(
          TableRow(children: [
            Column(children: [Text('111')]),
            Column(children: [Text('222')]),
            Column(children: [Text('333')]),
            Column(children: [Text('33')]),
            Column(children: [Text('3')])
          ]),
        );
      }
      return rows;
    }

    ;
    final tableCreated = Table(
        defaultColumnWidth: FixedColumnWidth(75.0),
        border: TableBorder.all(
            color: Colors.black, style: BorderStyle.solid, width: 2),
        children: CreateDynamicTableData());
    ;
    return Scaffold(
        appBar: AppBar(
          title: Text("Hola! Winning Results are here!!!"),
          backgroundColor: Colors.cyanAccent.shade400,
        ),
        body: Center(
            child: Column(children: <Widget>[
              Container(margin: EdgeInsets.all(10), child: tableCreated)
            ])));
  }
}