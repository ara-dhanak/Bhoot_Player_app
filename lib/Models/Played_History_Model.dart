// To parse this JSON data, do
//
//     final playedHistoryModel = playedHistoryModelFromJson(jsonString);

import 'dart:convert';
class PlayedHistoryModel {
  PlayedHistoryModel({
    this.id,
    this.slot,
    this.digit3,
    this.digit1,
    this.created,
    this.diamond,
    this.type,
  });

  final int id;
  final int slot;
  final int digit3;
  final int digit1;
  final String created;
  final int diamond;
  final String type;
}
