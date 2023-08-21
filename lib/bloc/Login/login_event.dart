part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class TryLogin extends LoginEvent {
  final String body;
  TryLogin(this.body);
}
