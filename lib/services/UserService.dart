import 'dart:convert';

import 'package:http/http.dart' as http;
import '../services/GlobalService.dart';
import '../models/Login/LoginRes.dart';
import '../models/Karyawan/Karyawan.dart';
import '../config/ConfigApp.dart';

class UserService {
  // Uri u = Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/login');
  Uri u = Uri.parse('http://localhost:7771/interlinear/trylogin');

  Future<LoginRes> login(String body) async {
    try {
      final response = await http.post(u, body: body, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      LoginRes r = loginResFromJson(response.body);
      if (r.status == 500) {
        throw ("Internal server error");
      }
      if (r.data != null) {
        GlobalService().saveHive('credlogin', r.data!.token);
      }
      return r;
    } catch (e) {
      // print("Throw :" + e.toString());
      throw (e);
    }
  }

  Future<ReqReset> requestResetPass(String body) async {
    Uri u =
        Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/reset-password/request');
    // Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/reqrestpass');
    try {
      final response = await http.post(u, body: body, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      ReqReset r = reqResetFromJson(response.body);
      return r;
    } catch (e) {
      throw (e);
    }
  }

  Future<ResetModel> resetPass(String body) async {
    Uri u = Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/reset-password/');
    // Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/reqrestpass');
    try {
      final response = await http.post(u, body: body, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      ResetModel r = resetModelFromJson(response.body);
      if (r.status == 500) {
        throw ("Internal server error");
      }
      return r;
    } catch (e) {
      throw (e);
    }
  }

  Future<RegRes> requestRegister(String body) async {
    Uri u = Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/register');
    // Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/reqregs');
    try {
      final response = await http.post(u, body: body, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      RegRes r = regResFromJson(response.body);
      return r;
    } catch (e) {
      throw (e);
    }
  }

  Future<JabatanModel> getJabatan() async {
    Uri u = Uri.parse(ConfigApp().baseUrl + 'api/v1/jabatan');
    // Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/jabatansucc');
    try {
      final response = await http.get(u, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      JabatanModel r = jabatanModelFromJson(response.body);
      return r;
    } catch (e) {
      throw (e);
    }
  }

  Future<DepartmentModel> getDepartment() async {
    Uri u = Uri.parse(ConfigApp().baseUrl + 'api/v1/departemen');
    // Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/departmentsucc');

    try {
      final response = await http.get(u, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      DepartmentModel r = departmentModelFromJson(response.body);
      return r;
    } catch (e) {
      throw (e);
    }
  }

  Future<StatusModel> getStatus() async {
    Uri u = Uri.parse(ConfigApp().baseUrl + 'api/v1/status-karyawan');
    // Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/statussucc');
    try {
      final response = await http.get(u, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
      StatusModel r = statusModelFromJson(response.body);
      return r;
    } catch (e) {
      throw (e);
    }
  }
}
