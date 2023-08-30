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
  String? info;
  RegisterInvalid(this.info);
}

final class RegisterSuccess extends LoginState {
  RegRes r;
  RegisterSuccess(this.r);
}

final class RegisterError extends LoginState {
  final String message;
  RegisterError(this.message);
}

final class GetJabatanLoading extends LoginState {}

final class GetJabatanSuccess extends LoginState {
  JabatanModel res;
  GetJabatanSuccess(this.res);
}

final class GetJabatanError extends LoginState {
  String r;
  GetJabatanError(this.r);
}

final class GetDepartmentLoading extends LoginState {}

final class GetDepartmentSuccess extends LoginState {
  DepartmentModel res;
  GetDepartmentSuccess(this.res);
}

final class GetDepartmentError extends LoginState {
  String r;
  GetDepartmentError(this.r);
}

final class GetStatusLoading extends LoginState {}

final class GetStatusSuccess extends LoginState {
  StatusModel res;
  GetStatusSuccess(this.res);
}

final class GetStatusError extends LoginState {
  String r;
  GetStatusError(this.r);
}
