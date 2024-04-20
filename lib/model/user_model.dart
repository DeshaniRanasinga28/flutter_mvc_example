import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String status;
  List<UserDetails> data;

  UserModel({
    required this.status,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        data: List<UserDetails>.from(
            json["data"].map((x) => UserDetails.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class UserDetails {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  UserDetails({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory UserDetails.fromJson(Map<String, dynamic> json) => UserDetails(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
