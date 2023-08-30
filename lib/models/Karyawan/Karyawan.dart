import 'dart:convert';

JabatanModel jabatanModelFromJson(String str) =>
    JabatanModel.fromJson(json.decode(str));

String jabatanModelToJson(JabatanModel data) => json.encode(data.toJson());

class JabatanModel {
  int status;
  String message;
  List<Datum> data;

  JabatanModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory JabatanModel.fromJson(Map<String, dynamic> json) => JabatanModel(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  String kode;
  String nama;

  Datum({
    required this.kode,
    required this.nama,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        kode: json["kode"],
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "kode": kode,
        "nama": nama,
      };
}

DepartmentModel departmentModelFromJson(String str) =>
    DepartmentModel.fromJson(json.decode(str));
String departmentModelToJson(DepartmentModel data) =>
    json.encode(data.toJson());

class DepartmentModel {
  int status;
  String message;
  List<ObjectDepartment> data;

  DepartmentModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory DepartmentModel.fromJson(Map<String, dynamic> json) =>
      DepartmentModel(
        status: json["status"],
        message: json["message"],
        data: List<ObjectDepartment>.from(
            json["data"].map((x) => ObjectDepartment.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ObjectDepartment {
  String kode;
  String nama;

  ObjectDepartment({
    required this.kode,
    required this.nama,
  });

  factory ObjectDepartment.fromJson(Map<String, dynamic> json) =>
      ObjectDepartment(
        kode: json["kode"],
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "kode": kode,
        "nama": nama,
      };
}

StatusModel statusModelFromJson(String str) =>
    StatusModel.fromJson(json.decode(str));

String statusModelToJson(StatusModel data) => json.encode(data.toJson());

class StatusModel {
  int status;
  String message;
  List<ObjectStatus> data;

  StatusModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) => StatusModel(
        status: json["status"],
        message: json["message"],
        data: List<ObjectStatus>.from(
            json["data"].map((x) => ObjectStatus.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ObjectStatus {
  String kode;
  String nama;

  ObjectStatus({
    required this.kode,
    required this.nama,
  });

  factory ObjectStatus.fromJson(Map<String, dynamic> json) => ObjectStatus(
        kode: json["kode"],
        nama: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "kode": kode,
        "nama": nama,
      };
}
