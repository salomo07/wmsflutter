import 'package:http/http.dart' as http;

import '../models/Login/LoginRes.dart';

class UserService {
  static String loginURL = "10.61.38.24:8080/api/v1/auth/login";
  Future<LoginRes> login() async {
    final response = await http.Client().post(Uri.parse(loginURL));
    LoginRes r = loginResFromJson(response.body);
    return r;
  }
}
