import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wmsflutter/models/Login/LoginRes.dart';
import 'package:wmsflutter/services/UserService.dart';
import 'package:wmsflutter/services/GlobalService.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<TryLogin>((event, emit) async {
      UserService service = UserService();
      try {
        //Loading
        emit(LoginLoading());
        LoginRes r = await service.login(event.body);

        print(r.status.toString());
        if (r.status == 200) {
          emit(LoginSuccess(r));
        } else {
          emit(LoginError(r.status.toString()));
        }
      } catch (e) {
        print('Error: $e');
        emit(LoginError(e.toString()));
      }
    });
    on<GetToken>((event, emit) async {
      GlobalService service = GlobalService();
      try {
        emit(GetTokenLoading());
        String r = await service.readToken();
        emit(GetTokenSuccess(r));
      } catch (e) {
        print('Error get token: $e');
        emit(GetTokenError(e.toString()));
      }
    });
  }
}
