import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wmsflutter/models/Login/LoginRes.dart';
import 'package:wmsflutter/services/UserService.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<TryLogin>((event, emit) async {
      emit(LoginInitial());
      UserService service = UserService();
      try {
        LoginRes r = await service.login(event.body);
        if (r.status == 200) {
          print("UserService -> success -> 200");
          emit(LoginSuccess(r));
        } else {
          print("UserService -> success ->Bukan 200");
          emit(LoginError('Bukan 200'));
        }
      } catch (e) {
        print('Error: $e');
        emit(LoginError(e.toString()));
      }
    });
  }
}
