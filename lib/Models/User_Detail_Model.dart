

import 'dart:convert';



// List<UserDetailModel> userDetailModelFromJson(String str) => List<UserDetailModel>.from(json.decode(str).map((x) => UserDetailModel.fromJson(x)));
//
// String userDetailModelToJson(List<UserDetailModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserDetailModel {
  UserDetailModel({
    this.userId,
    this.userName,
    this.supervisorName,
    this.supervisorId,
    this.userRole,
    this.diamond,
    this.phone,
    this.lastActive,
  });

  final String userId;
  final String userName;
  final String supervisorName;
  final String supervisorId;
  final String userRole;
  final int diamond;
  final String phone;
  final String lastActive;

  // factory UserDetailModel.fromJson(final json) => UserDetailModel(
  //   userId: json["user_id"],
  //   userName: json["user_name"],
  //   supervisorName: json["supervisor_name"],
  //   supervisorId: json["supervisor_id"],
  //   userRole: json["user_role"],
  //   diamond: json["diamond"]as int,
  //   phone: json["phone"],
  //   lastActive: json["last_active"],
  // );

}
