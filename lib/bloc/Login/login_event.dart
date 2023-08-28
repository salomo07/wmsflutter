part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class TryLogin extends LoginEvent {
  final String body;
  TryLogin(this.body);
}
class TryRegister extends LoginEvent {
  final String body;
  TryRegister(this.body);
}
class GetToken extends LoginEvent {
  GetToken();
}
class ReqResetPass extends LoginEvent {
  String email;
  ReqResetPass(this.email);
}
