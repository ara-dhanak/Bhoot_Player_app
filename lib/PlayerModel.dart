// To parse this JSON data, do
//
//     final resultData = resultDataFromJson(jsonString);

import 'dart:convert';

List<ResultData> resultDataFromJson(String str) => List<ResultData>.from(json.decode(str).map((x) => ResultData.fromJson(x)));

String resultDataToJson(List<ResultData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ResultData {
  ResultData({
    this.id,
    this.digit3,
    this.digit1,
    this.slot,
    this.created,
    this.riderId,
  });

  int id;
  int digit3;
  int digit1;
  int slot;
  String created;
  int riderId;

  factory ResultData.fromJson(Map<String, dynamic> json) => ResultData(
    id: json["id"],
    digit3: json["digit3"],
    digit1: json["digit1"],
    slot: json["slot"],
    created: json["created"],
    riderId: json["rider_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "digit3": digit3,
    "digit1": digit1,
    "slot": slot,
    "created": created,
    "rider_id": riderId,
  };
}
