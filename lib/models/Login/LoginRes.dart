import 'dart:convert';

LoginRes loginResFromJson(String str) => LoginRes.fromJson(json.decode(str));

String loginResToJson(LoginRes data) => json.encode(data.toJson());

class LoginRes {
  int status;
  String message;
  Data? data; // Use nullable type here for success case
  String? additionalInfo; // Use nullable type here for failure case

  LoginRes({
    required this.status,
    required this.message,
    this.data,
    this.additionalInfo,
  });

  factory LoginRes.fromJson(Map<String, dynamic> json) {
    if (json["status"] == 200) {
      // Successful responses
      return LoginRes(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );
    } else {
      // Failed response
      return LoginRes(
        status: json["status"],
        message: json["message"],
        additionalInfo: json["additionalInfo"],
      );
    }
  }

  Map<String, dynamic> toJson() {
    if (status == 200) {
      // Successful response
      return {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
    } else {
      // Failed response
      return {
        "status": status,
        "message": message,
        "additionalInfo": additionalInfo,
      };
    }
  }
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

//Untuk Reset Password
ReqReset reqResetFromJson(String str) => ReqReset.fromJson(json.decode(str));
String reqResetToJson(ReqReset data) => json.encode(data.toJson());

class ReqReset {
  int status;
  String message;
  DataReqReset? data;
  String? additionalInfo;

  ReqReset({
    required this.status,
    required this.message,
    this.data,
    this.additionalInfo,
  });

  factory ReqReset.fromJson(Map<String, dynamic> json) {
    if (json["status"] == 200) {
      return ReqReset(status: json["status"], message: json["message"]);
    } else {
      return ReqReset(
          status: json["status"],
          message: json["message"],
          additionalInfo: json["additionalInfo"]);
    }
  }
  Map<String, dynamic> toJson() {
    if (status == 200) {
      return {"status": status, "message": message};
    } else {
      return {
        "status": status,
        "message": message,
        "additionalInfo": additionalInfo,
      };
    }
  }
}

class DataReqReset {
  String link;

  DataReqReset({
    required this.link,
  });

  factory DataReqReset.fromJson(Map<String, dynamic> json) => DataReqReset(
        link: json["link"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
      };
}

ResetModel resetModelFromJson(String str) =>
    ResetModel.fromJson(json.decode(str));

String resetModelToJson(ResetModel data) => json.encode(data.toJson());

class ResetModel {
  int status;
  String message;
  String? additionalInfo;

  ResetModel({
    required this.status,
    required this.message,
    this.additionalInfo,
  });

  factory ResetModel.fromJson(Map<String, dynamic> json) {
    if (json["status"] == 200) {
      return ResetModel(status: json["status"], message: json["message"]);
    } else {
      return ResetModel(
        status: json["status"],
        message: json["message"],
        additionalInfo: json["additionalInfo"],
      );
    }
  }

  Map<String, dynamic> toJson() {
    if (status == 200) {
      return {"status": status, "message": message};
    } else {
      return {
        "status": status,
        "message": message,
        "additionalInfo": additionalInfo,
      };
    }
  }
}

//Untuk Register Success
RegRes regResFromJson(String str) => RegRes.fromJson(json.decode(str));
String regResToJson(RegRes data) => json.encode(data.toJson());

class RegRes {
  int status;
  String message;
  String? additionalInfo;
  List<Error>? errors;

  RegRes({
    required this.status,
    required this.message,
    this.additionalInfo,
    this.errors,
  });

  factory RegRes.fromJson(Map<String, dynamic> json) {
    if (json["status"] == 201) {
      return RegRes(status: json["status"], message: json["message"]);
    } else if (json["status"] == 400 || json["status"] == 404) {
      return RegRes(
        status: json["status"],
        message: json["message"],
        additionalInfo: json["additionalInfo"],
      );
    } else if (json["status"] == 422) {
      return RegRes(
        status: json["status"],
        message: json["message"],
        additionalInfo: json["additionalInfo"],
        errors: List<Error>.from(json["errors"].map((x) => Error.fromJson(x))),
      );
    } else {
      return RegRes(
        status: json["status"],
        message: json["message"],
        additionalInfo: json["additionalInfo"],
      );
    }
  }

  Map<String, dynamic> toJson() {
    if (status == 200) {
      return {"status": status, "message": message};
    } else {
      return {
        "status": status,
        "message": message,
        " additionalInfo": additionalInfo
      };
    }
  }
}

class Error {
  String message;
  String field;

  Error({
    required this.message,
    required this.field,
  });

  factory Error.fromJson(Map<String, dynamic> json) => Error(
        message: json["message"],
        field: json["field"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "field": field,
      };
}
