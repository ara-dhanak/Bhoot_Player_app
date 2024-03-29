import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Models/User_Detail_Model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Models/Played_History_Model.dart';
import 'Models/Winning_History_Model.dart';
import 'ShowAlertDialog.dart';

var access_token = "";
var URL = 'http://3.16.36.128/';
var header_access = "";
var transfer_diamond;
var remaining_diamond;
Map<String, dynamic> Global_User_Details = {};

// -------------------------------------------------------------------Login-----------------------------------------------//
Future<bool> validateLogin(String _user_name, String _user_password) async {
  var Login_URL = 'api/token/';
  final http.Response login_response = await http.post(
    URL + Login_URL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': _user_name,
      'password': _user_password,
    }),
  );

  if (login_response.statusCode == 200) {
    Map<String, dynamic> LoginResponse = jsonDecode(login_response.body);
    access_token = LoginResponse["access"];

    header_access = "Bearer " + access_token;

    return true;
  } else {
    return false;
  }
}
// -------------------------------------------------------------------WINNING History-----------------------------------------------//

Future<List<WinningHistoryModel>> Get_Winning_History_API() async {
  var Winning_history_URL = URL + 'game/win/';

  final Winning_history_response =
      await http.get(Winning_history_URL, headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': header_access
  });
  if (Winning_history_response.statusCode == 200) {
    final jsonResponse = json.decode(Winning_history_response.body);
    List<WinningHistoryModel> Winning_Hist_List = [];
    for (var singlePlayed in jsonResponse) {
      WinningHistoryModel Winning_History_List_result = WinningHistoryModel(
          id: singlePlayed["id"],
          slot: singlePlayed["slot"],
          digit3: singlePlayed["digit3"],
          digit1: singlePlayed["digit1"],
          created: singlePlayed["created"],
          diamond: singlePlayed["diamond"],
          type: singlePlayed["type"],
          reward: singlePlayed["reward"]);
      Winning_Hist_List.add(Winning_History_List_result);
    }
    return Winning_Hist_List.reversed.toList();
  } else {
    return null;
  }
}
// -------------------------------------------------------------------Played History-----------------------------------------------//

Future<List<PlayedHistoryModel>> Played_history_API() async {
  var Played_history_URL = URL + 'game/played/';

  final played_history_response =
      await http.get(Played_history_URL, headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': header_access
  });
  if (played_history_response.statusCode == 200) {
    final jsonResponse = json.decode(played_history_response.body);
    List<PlayedHistoryModel> playered_Hist_List = [];
    for (var singlePlayed in jsonResponse) {
      PlayedHistoryModel Player_History_List_result = PlayedHistoryModel(
          id: singlePlayed["id"],
          slot: singlePlayed["slot"],
          digit3: singlePlayed["digit3"],
          digit1: singlePlayed["digit1"],
          created: singlePlayed["created"],
          diamond: singlePlayed["diamond"],
          type: singlePlayed["type"]);
      playered_Hist_List.add(Player_History_List_result);
    }
    return playered_Hist_List.reversed.toList();
  } else {
    return null;
  }
}

// -------------------------------------------------------------------User Details-----------------------------------------------//

Future User_Detail_API(BuildContext context) async {
  try {
    var user_detail_URL = URL + 'accounts/user_details/';
    final user_detail_response =
        await http.get(user_detail_URL, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': header_access
    });
    if (user_detail_response.statusCode == 200) {
      final User_response = json.decode(user_detail_response.body);
      UserDetailModel user_detail_List_result = UserDetailModel(
          userId: User_response[0]["user_id"].toString(),
          userName: User_response[0]["user_name"],
          supervisorName: User_response[0]["supervisor_name"],
          supervisorId: User_response[0]["supervisor_id"],
          userRole: User_response[0]["user_role"],
          diamond: User_response[0]["diamond"],
          phone: User_response[0]["phone"],
          lastActive: User_response[0]["last_active"]);
      //debugPrint("The Loop Running"+singleUser);

      Global_User_Details["user_name"] = user_detail_List_result.userName;
      Global_User_Details["supervisorName"] = user_detail_List_result.supervisorName;
      Global_User_Details["diamond"] = user_detail_List_result.diamond;
      return user_detail_List_result;

      //debugPrint("The Loop Running"+singleUser);

    } else {
      return null;
    }
  } catch (e) {
    Future.delayed(Duration.zero,
            () => showAlertDialog(context, "Error while fetching User Details!"));
  }
}

//------------------------------------------------------------------- Transfer Diamonds  -----------------------------------------------
void transfer_diamond_API(BuildContext context) async {
  var transfer_diamond_url = URL + "game/transfer/";
  final transfer_diamond_response = await http.post(
    transfer_diamond_url,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': header_access
    },
    body: jsonEncode(<String, int>{
      'diamond': Global_User_Details["diamond"], // change variable name
    }),
  );

  //print(transfer_diamond_url);
 // print(transfer_diamond_response);
  if (transfer_diamond_response.statusCode == 200) {
    Map<String, dynamic> Transfer_diamond_result =
        jsonDecode(transfer_diamond_response.body);

    remaining_diamond = Transfer_diamond_result["diamond"];

    //Changes of dynamic diamond value
    Future.delayed(Duration.zero,
        () => showAlertDialog(context, "Diamonds Successfully transferred!"));

    //print("Diamond successfully transferred");
  } else {
    //print("Error-Diamond");
  }
}

// -------------------------------------------------------------------Reset Password-----------------------------------------------//
void reset_Pwd(String a, String b) {}
// -------------------------------------------------------------------Playnow Submit API-----------------------------------------------//

void submit() {}
