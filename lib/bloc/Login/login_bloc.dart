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
        print(r.status.toString() + "," + r.message);
        if (r.status == 201) {
          emit(RegisterSuccess(r));
        } else if (r.status == 400) {
          emit(RegisterInvalid(r.additionalInfo));
        } else if (r.status == 404) {
          emit(RegisterInvalid(r.additionalInfo));
        } else if (r.status == 422) {
          emit(RegisterInvalid(r.additionalInfo));
        } else {
          emit(RegisterError(r.additionalInfo.toString()));
        }
      } catch (e) {
        print('Errorx: $e');
        emit(RegisterError(e.toString()));
      }
    });

    on<GetDataForRegistrasi>((event, emit) async {
      UserService service = UserService();
      try {
        emit(GetDataForRegistrasiLoading());
        JabatanModel? responseJabatanModel;
        responseJabatanModel = await service.getJabatan().timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            emit(GetDataForRegistrasiError("Timeout : getJabatan"));
            return responseJabatanModel!;
          },
        );
        DepartmentModel? responseDepartmentModel;
        responseDepartmentModel = await service.getDepartment().timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            emit(GetDataForRegistrasiError("Timeout : getDepartment"));
            return responseDepartmentModel!;
          },
        );
        StatusModel? responseStatusModel;
        responseStatusModel = await service.getStatus().timeout(
          const Duration(seconds: 30),
          onTimeout: () {
            emit(GetDataForRegistrasiError("Timeout : getStatus"));
            return responseStatusModel!;
          },
        );
        emit(GetDataForRegistrasiSuccess(responseJabatanModel,
            responseDepartmentModel, responseStatusModel));
      } catch (e) {
        emit(GetDataForRegistrasiError(e.toString()));
      }
    });
  }
}
