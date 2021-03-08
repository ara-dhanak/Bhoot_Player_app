// To parse this JSON data, do
//
//     final winningHistoryModel = winningHistoryModelFromJson(jsonString);

import 'dart:convert';
class WinningHistoryModel {
  WinningHistoryModel({
    this.id,
    this.slot,
    this.digit3,
    this.digit1,
    this.created,
    this.diamond,
    this.type,
    this.reward,
    this.isClaimed,
  });

  int id;
  int slot;
  int digit3;
  int digit1;
  String created;
  int diamond;
  String type;
  int reward;
  bool isClaimed;
}
