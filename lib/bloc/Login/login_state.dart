part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  LoginRes r;
  LoginSuccess(this.r);
}

final class GetTokenLoading extends LoginState {}

final class GetTokenSuccess extends LoginState {
  String r;
  GetTokenSuccess(this.r);
}

final class GetTokenError extends LoginState {
  String r;
  GetTokenError(this.r);
}

final class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
}

// final class LoginUnprocessable extends LoginState {}

// final class LoginBadRequest extends LoginState {}
