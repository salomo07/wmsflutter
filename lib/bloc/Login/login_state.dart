part of 'login_bloc.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  LoginRes r;
  LoginSuccess(this.r);
}

final class LoginError extends LoginState {
  final String message;
  LoginError(this.message);
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

final class ReqResLoading extends LoginState {}

final class ReqResSuccess extends LoginState {
  ReqReset reqReset;
  ReqResSuccess(this.reqReset);
}

final class ReqResNotFound extends LoginState {}

final class ReqResError extends LoginState {
  String errorObject;
  ReqResError(this.errorObject);
}

final class ResetPassLoading extends LoginState {}

final class ResetPassSuccess extends LoginState {
  ResetModel resetModel;
  ResetPassSuccess(this.resetModel);
}

final class ResetPassExpired extends LoginState {}

final class ResetPassError extends LoginState {
  String errorObject;
  ResetPassError(this.errorObject);
}

final class RegisterInitial extends LoginState {}

final class RegisterLoading extends LoginState {}

final class RegisterInvalid extends LoginState {
  RegRes r;
  RegisterInvalid(this.r);
}

final class RegisterSuccess extends LoginState {
  RegRes r;
  RegisterSuccess(this.r);
}

final class RegisterError extends LoginState {
  final String message;
  RegisterError(this.message);
}

final class GetDataForRegistrasiLoading extends LoginState {}

final class GetDataForRegistrasiSuccess extends LoginState {
  JabatanModel j;
  DepartmentModel d;
  StatusModel s;
  GetDataForRegistrasiSuccess(this.j, this.d, this.s);
}

final class GetDataForRegistrasiError extends LoginState {
  String r;
  GetDataForRegistrasiError(this.r);
}
