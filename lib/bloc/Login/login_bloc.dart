import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wmsflutter/models/Karyawan/Karyawan.dart';
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

        // print(r.status.toString());
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
        print("Token : ${r}");
        emit(GetTokenSuccess(r));
      } catch (e) {
        print('Error get token: $e');
        emit(GetTokenError(e.toString()));
      }
    });

    on<ReqResetPass>((event, emit) async {
      UserService service = UserService();
      try {
        emit(ReqResLoading());
        ReqReset r = await service.requestResetPass(event.body);
        print("Dapat hasil " + r.status.toString());
        if (r.status == 200) {
          emit(ReqResSuccess(r));
        } else if (r.status == 404) {
          emit(ReqResNotFound());
        }
      } catch (e) {
        print('Error ReqResetPass : $e');
        emit(ReqResError(e.toString()));
      }
    });

    on<ResetPass>((event, emit) async {
      UserService service = UserService();
      try {
        emit(ResetPassLoading());
        ResetModel r = await service.resetPass(event.body);
        print("Dapat hasil " + r.status.toString());
        if (r.status == 200) {
          emit(ResetPassSuccess(r));
        } else if (r.status == 400) {
          emit(ResetPassExpired());
        }
      } catch (e) {
        print('Error ReqResetPass : $e');
        emit(ResetPassError(e.toString()));
      }
    });

    on<TryRegister>((event, emit) async {
      UserService service = UserService();
      try {
        //Loading
        emit(RegisterLoading());
        RegRes r = await service.requestRegister(event.body);

        // print(r.status.toString());
        if (r.status == 200) {
          emit(RegisterSuccess(r));
        } else if (r.status == 400) {
          emit(RegisterInvalid(r.additionalInfo));
        } else if (r.status == 404) {
          emit(RegisterInvalid(r.additionalInfo));
        } else {
          emit(RegisterError(r.additionalInfo.toString()));
        }
      } catch (e) {
        print('Error: $e');
        emit(LoginError(e.toString()));
      }
    });

    on<GetJabatan>((event, emit) async {
      UserService service = UserService();
      try {
        emit(GetJabatanLoading());
        JabatanModel? responseJabatanModel;
        responseJabatanModel = await service.getJabatan().timeout(
          Duration(seconds: 30),
          onTimeout: () {
            emit(GetJabatanError("Bang temot..."));
            return responseJabatanModel!;
          },
        );
        emit(GetJabatanSuccess(responseJabatanModel));
      } catch (e) {
        print('Error GetJabatanError : $e');
        emit(GetJabatanError(e.toString()));
      }
    });
    on<GetDepartment>((event, emit) async {
      UserService service = UserService();
      try {
        emit(GetDepartmentLoading());
        DepartmentModel? responseDepartmentModel;
        responseDepartmentModel = await service.getDepartment().timeout(
          Duration(seconds: 30),
          onTimeout: () {
            emit(GetDepartmentError("Bang temot..."));
            return responseDepartmentModel!;
          },
        );
        emit(GetDepartmentSuccess(responseDepartmentModel));
      } catch (e) {
        print('Error GetDepartmentError : $e');
        emit(GetDepartmentError(e.toString()));
      }
    });
    on<GetStatus>((event, emit) async {
      UserService service = UserService();
      try {
        emit(GetStatusLoading());
        StatusModel? responseStatusModel;
        responseStatusModel = await service.getStatus().timeout(
          Duration(seconds: 30),
          onTimeout: () {
            emit(GetStatusError("Bang temot..."));
            return responseStatusModel!;
          },
        );
        emit(GetStatusSuccess(responseStatusModel));
      } catch (e) {
        print('Error GetStatusError : $e');
        emit(GetStatusError(e.toString()));
      }
    });
  }
}
