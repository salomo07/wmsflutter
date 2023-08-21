import 'dart:convert';

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));

String loginResToJson(LoginRes data) => json.encode(data.toJson());

class LoginRes {
  int status;
  String message;
  Data data;
  String additionalInfo;

  LoginRes({
    required this.status,
    required this.message,
    required this.data,
    required this.additionalInfo,
  });

  factory LoginRes.fromJson(Map<String, dynamic> json) => LoginRes(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        additionalInfo: json["additionalInfo"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
        "additionalInfo": additionalInfo,
      };
}

class Data {
  String token;

  Data({
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "token": token,
      };
}
