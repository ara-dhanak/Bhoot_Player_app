import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'AbstractClassFactory.dart';
import 'Models/Played_History_Model.dart';
import 'Request.dart';


TextStyle datacoloumn_style = TextStyle(fontStyle: FontStyle.italic);

class winning_history extends StatefulWidget implements AbstractPage {
  @override
  _winning_historyState createState() => _winning_historyState();

  void BuildPage() {
//REST API calls required for your page

    winning_history();

  }

}


class _winning_historyState extends State<winning_history> {


  @override
  Widget build(BuildContext context) {

    List<DataRow> CreateDynamicTableData(data) {
      List<DataRow> rows = [];
      for (int i = 0; i <= data.length - 1; i++) {
        rows.add(
          DataRow(cells: [
            DataCell(Text(data[i].slot.toString())),
            DataCell(Text(data[i].digit3.toString())),
            DataCell(Text(data[i].digit1.toString())),
            DataCell(Text(data[i].created.toString())),
            DataCell(Text(data[i].diamond.toString())),
            DataCell(Text(data[i].type.toString())),
            DataCell(Text(data[i].reward.toString()))
          ]),
        );
      }
      return rows;
    }
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text("Winning History is here!!!",textAlign: TextAlign.center),
            //backgroundColor: Colors.yellow,
            automaticallyImplyLeading: false),
        body: Center(
          child: FutureBuilder(
            future: Get_Winning_History_API(),
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
                                    label: Text('Slot', style: datacoloumn_style)),
                                DataColumn(
                                    label: Text('Patti', style: datacoloumn_style)),
                                DataColumn(
                                    label: Text('Number', style: datacoloumn_style)),
                                DataColumn(
                                    label:
                                    Text('Created', style: datacoloumn_style)),

                                DataColumn(
                                    label: Text('Diamond', style: datacoloumn_style)),
                                DataColumn(
                                    label:
                                    Text('Type', style: datacoloumn_style)),
                                 DataColumn(
                                    label:
                                    Text('Reward', style: datacoloumn_style))
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
