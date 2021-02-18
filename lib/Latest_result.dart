import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';




class latest_result extends StatefulWidget implements AbstractPage {
  @override
  _latest_resultState createState() => _latest_resultState();

  @override
  void BuildPage() {
    // TODO: implement BuildPage
  }
}

class _latest_resultState extends State<latest_result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(title: Text( "         ***Bhootnath last 7 days result*** "),
        backgroundColor: Colors.cyanAccent.shade400,
   )
    );
  }
}



// class latest_result extends StatefulWidget {
//   @override
//   _latest_resultState createState() => latest_resultState();
//
// class _latest_resultState extends State<latest_result> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text( "Last 7 days result"),
//         backgroundColor: Colors.cyanAccent.shade400
//         ,),
//
//     );
//   }
// }
