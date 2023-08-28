import 'dart:convert';

import 'package:http/http.dart' as http;
import '../services/GlobalService.dart';
import '../models/Login/LoginRes.dart';
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
    Uri u =Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/reset-password/request');
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
  Future<ReqReset> resetPass(String body) async {
    Uri u =Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/reset-password/');
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
  Future<RegRes> requestRegister(String body) async {
    // Uri u =Uri.parse(ConfigApp().baseUrl + 'api/v1/auth/register');
    Uri u = Uri.parse('http://localhost:7771/' + 'interlinear/reqregs');
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
}
