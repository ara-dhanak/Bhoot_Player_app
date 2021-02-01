import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'ShowAlertDialog.dart';


var access_token = "";

void validate(
    BuildContext context, String PlayerName_Value, String PlayerPassword_value) async {
  final http.Response login_response = await http.post(
    'http://3.16.36.128/api/token/',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'username': PlayerName_Value,
      'password': PlayerPassword_value,
    }),
  );

  if (login_response.statusCode == 200) {
    Map<String, dynamic> dartbody = jsonDecode(login_response.body);
    //print(jsonDecode(response.body));
    access_token = dartbody["access"];
    
  } else {
    Future.delayed(
        Duration.zero, () => showAlertDialog(context, "Error while Login"));
    //print(jsonDecode(response.body));
  }
}

void FinalSubmit(BuildContext context, int digit3, int digit1, int slot) async {
  if (slot > 7) {
    Future.delayed(Duration.zero,
        () => showAlertDialog(context, "Time Over !!! to Show Result"));
  } else {
    var header_access = "Bearer " + access_token;
    final http.Response final_sub_response = await http.post(
      'http://3.16.36.128/game/gamedata/',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': header_access
      },
      body: jsonEncode(<String, int>{
        'digit3': digit3,
        'digit1': digit1,
        'slot': (slot + 1),
        'rider_id': 2
      }),
    );

    if (final_sub_response.statusCode == 201) {
      Future.delayed(Duration.zero, () => showAlertDialog(context, "Success"));
      // threedigit.clear();
      //Single_digit_string="";
    } else {
      Future.delayed(Duration.zero,
          () => showAlertDialog(context, "Error while Submitting"));
    }
  }
}
