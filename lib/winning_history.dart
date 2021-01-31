import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';

class winning_history extends StatefulWidget implements AbstractPage {
  @override


  void BuildPage() {

  }

  _TableExample createState() => _TableExample();
}

class _TableExample extends State<winning_history> {
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
        appBar: AppBar(
          title: Text('BhoothNath APP'),
        ),
        body: Center(
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Table(
                 // defaultColumnWidth:
                  columnWidths:
                  {
                    0: FlexColumnWidth(1.5),
                    1: FlexColumnWidth(1.7),
                    2: FlexColumnWidth(2.3),
                    3: FlexColumnWidth(1.3),
                    4: FlexColumnWidth(1.3),
                    5: FlexColumnWidth(2),
                    6: FlexColumnWidth(2)
                  },
                  
                  //FixedColumnWidth(55.0)
                  border: TableBorder.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2),
                  children: [
                    TableRow(

                        decoration: BoxDecoration(
                            color: Theme.of(context)
                                .accentColor // Background color for the row
                          // To alternate between dark and light shades of the row's background color.
                        ),children: [
                      Column(children:[Text('Patti', style: TextStyle(fontSize: 20.0),softWrap: true,)]),
                      Column(children:[Text('Single', style: TextStyle(fontSize: 20.0),softWrap: true)]),
                      Column(children:[Text('Diamond', style: TextStyle(fontSize: 20.0),softWrap: true)]),
                      Column(children:[Text('Date', style: TextStyle(fontSize: 20.0),softWrap: true)]),
                      Column(children:[Text('Slot', style: TextStyle(fontSize: 20.0),softWrap: true)]),
                      Column(children:[Text('Winner', style: TextStyle(fontSize: 20.0),softWrap: true)]),
                      Column(children:[Text('Reward', style: TextStyle(fontSize: 20.0),softWrap: true)])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                    TableRow( children: [
                      Column(children:[Text('111')]),
                      Column(children:[Text('222')] ),
                      Column(children:[Text('333')]),
                      Column(children:[Text('33')]),
                      Column(children:[Text('3')]),
                      Column(children:[Text('555')]),
                      Column(children:[Text('789')])
                    ]),
                  ],
                ),
              ),
            ])
        )),
  );
}
}




