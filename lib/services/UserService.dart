import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/Login/LoginRes.dart';

class UserService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  Future<void> saveToken(str) async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString('token', str);
  }

  Future<String> readToken() async {
    final SharedPreferences prefs = await _prefs;
    return prefs.getString('token')!;
  }

  // static String loginURL = "http://10.61.38.24:8080/api/v1/auth/login";
  static String loginURL = "http://localhost:7771/interlinear/trylogin";
  Uri u = Uri.parse('http://localhost:7771/interlinear/trylogin');
  Future<LoginRes> login(String body) async {
    var uri = Uri.http('localhost:7771', 'interlinear/trylogin');
    // print(readToken());
    final response = await http.post(u, body: body, headers: <String, String>{
      'token': "sss",
    });
    LoginRes r = loginResFromJson(response.body);
    saveToken(r.data.token);
    return r;
  }
}
