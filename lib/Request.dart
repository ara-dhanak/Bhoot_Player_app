import 'package:flutter_app/Models/User_Detail_Model.dart';
import 'package:flutter_app/game_history.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'LandingPage.dart';
import 'Models/Played_History_Model.dart';
import 'ShowAlertDialog.dart';
//import 'PlayerModel.dart';

var access_token = "";
var URL='http://3.16.36.128/';
var header_access= "";

/*class PostsRepository {
  Future<List<ResultData>> getPosts() async {
    final result_response = await http.get("http://3.16.36.128/game/gamedata/");
    return resultDataFromJson(result_response.body);
  }
}*/

Future<bool> validate(
   // BuildContext context, String PlayerName_Value, String PlayerPassword_value) async {
BuildContext context, String _Resetpcontroller, String _Confirmpcontroller) async {
  var Login_URL='api/token/';
  final http.Response login_response = await http.post(
    URL+Login_URL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': _Resetpcontroller,
      'password': _Confirmpcontroller,
    }),
  );

  if (login_response.statusCode == 200) {
    Map<String, dynamic> LoginResponse = jsonDecode(login_response.body);
    //print(jsonDecode(response.body));
    access_token = LoginResponse["access"];
    print('The access token is'+ access_token);
    header_access="Bearer " + access_token;
    // Navigator.push(
    //     context,MaterialPageRoute(builder: (context) => bhoot_bottom_nav()));
return true;
  } else {
    // Future.delayed(
    //     Duration.zero, () => showAlertDialog(context, "Error while Login"));
return false;
    //print(jsonDecode(response.body));
  }
}
//
// void FinalSubmit(BuildContext context, int digit3, int digit1, int slot) async {
//   if (slot > 7) {
//     Future.delayed(Duration.zero,
//         () => showAlertDialog(context, "Time Over !!! to Show Result"));
//   } else {
//     var header_access = "Bearer " + access_token;
//     final http.Response final_sub_response = await http.post(
//       'http://3.16.36.128/game/gamedata/',
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         'Authorization': header_access
//       },
//       body: jsonEncode(<String, int>{
//         'digit3': digit3,
//         'digit1': digit1,
//         'slot': (slot + 1),
//         'rider_id': 2
//       }),
//     );
//
//     if (final_sub_response.statusCode == 201) {
//       Future.delayed(Duration.zero, () => showAlertDialog(context, "Success"));
//       // threedigit.clear();
//       //Single_digit_string="";
//     } else {
//       Future.delayed(Duration.zero,
//           () => showAlertDialog(context, "Error while Submitting"));
//     }
//   }
// }

void getwinninghistory()
{

}
 Future<List<PlayedHistoryModel>> Played_history_API()async{
  var Played_history_URL=URL+'game/played/?till=2021-02-28';

  final played_history_response = await http.get(Played_history_URL,  headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': header_access
  });
  if(played_history_response.statusCode==200){
    final jsonResponse = json.decode(played_history_response.body);
    List<PlayedHistoryModel> playered_Hist_List=[];
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
    return playered_Hist_List;
  }else{
    return null;
  }
}
Future<UserDetailModel>User_Detail_API() async{
  var user_detail_URL=URL+'accounts/user_details/';
  final user_detail_response = await http.get(user_detail_URL,  headers: <String, String>{
    'Content-Type': 'application/json; charset=UTF-8',
    'Authorization': header_access
  });
  if(user_detail_response.statusCode==200){
    return UserDetailModel.fromJson(jsonDecode(user_detail_response.body));
  }else{
    return null;
  }
}

//
Future<bool> reset_Pwd(
    // BuildContext context, String PlayerName_Value, String PlayerPassword_value) async {
    BuildContext context, String _Resetpcontroller, String _Confirmpcontroller) async {
  var Login_URL='api/token/';
  final http.Response login_response = await http.post(
    URL+Login_URL,
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': _Resetpcontroller,
      'password': _Confirmpcontroller,
    }),
  );

  if (login_response.statusCode == 200) {
    Map<String, dynamic> LoginResponse = jsonDecode(login_response.body);
    //print(jsonDecode(response.body));
    access_token = LoginResponse["access"];
    print('The access token is'+ access_token);
    header_access="Bearer " + access_token;
    // Navigator.push(
    //     context,MaterialPageRoute(builder: (context) => bhoot_bottom_nav()));
    return true;
  } else {
    // Future.delayed(
    //     Duration.zero, () => showAlertDialog(context, "Error while Login"));
    return false;
    //print(jsonDecode(response.body));
  }
}