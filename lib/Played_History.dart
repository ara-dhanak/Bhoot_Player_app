import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'AbstractClassFactory.dart';
import 'Models/Played_History_Model.dart';
import 'Request.dart';

PlayedHistoryModel _Played_hist;
TextStyle Played_History_Style = TextStyle(
    fontWeight: FontWeight.w700,
    color: Colors.black,
    fontSize: 20.0,
    fontFamily: 'Raleway');
TextStyle datacoloumn_style = TextStyle(fontStyle: FontStyle.italic);

class Played_History extends StatefulWidget implements AbstractPage {
  @override
  _Played_HistoryState createState() => _Played_HistoryState();

  void BuildPage() async {
    //final PlayedHistoryModel _Played_hist=await Played_history();
    Played_History();
    //final Future <PlayedHistoryModel> _Played_hist=  await();
  }
}

class _Played_HistoryState extends State<Played_History> {
  @override
  Widget build(BuildContext context) {
    // void BuildPage() async{
    //
    //   final PlayedHistoryModel Played_hist= await Played_history();
    //   setState(() {
    //     _Played_hist= Played_hist;
    //   });
    // }
    List<DataRow> CreateDynamicTableData(data) {
      List<DataRow> rows = [];
      for (int i = 0; i <= data.length - 1; i++) {
        rows.add(
          DataRow(cells: [
            DataCell(Text((i + 1).toString())),
            DataCell(Text(data[i].digit3.toString())),
            DataCell(Text(data[i].digit1.toString())),
            DataCell(Text(data[i].diamond.toString())),
            DataCell(Text(data[i].created.toString())),
            DataCell(Text(data[i].slot.toString()))
          ]),
        );
      }
      return rows;
    }

    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Player History are here!!!",textAlign: TextAlign.center),
            //backgroundColor: Colors.yellow,
            automaticallyImplyLeading: false),
        body: Center(
          child: FutureBuilder(
            future: Played_history_API(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                    child: InteractiveViewer(
                      constrained: false,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: DataTable(
                          columns: <DataColumn>[
                            DataColumn(
                                label: Text('SL', style: datacoloumn_style)),
                            DataColumn(
                                label: Text('Patti', style: datacoloumn_style)),
                            DataColumn(
                                label:
                                    Text('Single', style: datacoloumn_style)),
                            DataColumn(
                                label:
                                    Text('Amount', style: datacoloumn_style)),
                            DataColumn(
                                label: Text('Date', style: datacoloumn_style)),
                            DataColumn(
                                label:
                                    Text('Game no', style: datacoloumn_style))
                          ],
                          rows: CreateDynamicTableData(snapshot.data),
                        ),
                      )
                    ],
                  ),
                ));
              } else if (snapshot.hasError) {
                return new Text(snapshot.hasError.toString());
              }
              return CircularProgressIndicator();
            },
          ),
        ));
  }
}
