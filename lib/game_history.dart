import 'package:flutter/material.dart';
import 'AbstractClassFactory.dart';
import 'package:url_launcher/url_launcher.dart';

class game_history extends StatefulWidget implements AbstractPage {
  @override
  _game_historyState createState() => _game_historyState();

  @override
  void BuildPage() {
    // TODO: implement BuildPage
  }
//request/response  obj;

}

/*Starting from Android 11 the Browser View needs to be manually enabled in the AndroidMainefest.xml file
queries>
<intent>
<action android:name="android.intent.action.VIEW" />
<category android:name="android.intent.category.BROWSABLE" />
<data android:scheme="https" />
</intent>
</queries>
I found this from https://medium.com/flutter-community/package-visibility-for-url-launcher-on-android-11-api-30-7c03cbce76a5
*/

launchURL() async {
  try {
    const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url, forceWebView: true);
    } else {
      throw 'Madhu Error Loading BhootNath Result Page $url';
    }
  } catch (e) {
    print(e.toString());
  }
}

class _game_historyState extends State<game_history> {
  void BuildPage() {
    launchURL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Checkout your Game history!!! "),
          //backgroundColor: Colors.cyanAccent.shade400,
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //new Image.asset('images/goldb.png', width: 300, height: 400, alignment: Alignment.center),
               new Image.asset('images/goldb.png', width: 300, height: 400, alignment: Alignment.center,),
          ElevatedButton(
        onPressed: BuildPage,
        child: Text('Bhootnath Result '),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent))
    )]))
    );
}}
