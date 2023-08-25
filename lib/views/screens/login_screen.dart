import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wmsflutter/bloc/Login/login_bloc.dart';
import 'package:wmsflutter/services/GlobalService.dart';
import 'dart:convert';
import '../../utils/routes.gr.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginBloc loginBloc = LoginBloc();
  bool isLoadingToken = true;

  @override
  void initState() {
    loginBloc.add(GetToken());
    setState(() {});
    super.initState();
  }

  @override
  void dispose() {
    loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginBloc,
      child: Scaffold(
        body: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) async {
            if (state is GetTokenSuccess) {
              if (state.r != "") {
                print("Base64 : " + base64.encode("contoh ya cuk".codeUnits));
                List<int> decodedint1 =
                    base64Url.decode(base64.encode("contoh ya cuk".codeUnits));
                String decodedstring1 = utf8.decode(decodedint1);
                print(decodedstring1);
                GlobalService().saveHive(
                    'toket', base64.encode("contoh ya cuk".codeUnits));
                context.router.pushNamed('/home');
              } else {
                setState(() {
                  isLoadingToken = false;
                });
              }
            } else if (state is GetTokenError) {
              setState(() {
                isLoadingToken = false;
              });
            }
          },
          child: isLoadingToken
              ? Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : SizedBox(
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 24, bottom: 24, left: 50),
                        child: Container(
                          padding: const EdgeInsets.all(17),
                          width: 1030,
                          height: 684,
                          decoration: const BoxDecoration(
                              color: Color(0xffffeb74),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24))),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(24))),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 25,
                                  child: SizedBox(
                                    height: 700,
                                    width: 786,
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 125),
                                              child: Row(
                                                children: [
                                                  Image.asset(
                                                      'assets/images/drawkit.png')
                                                ],
                                              ),
                                            ),
                                            Text(
                                              "Ad1Soul - Aplikasi Manajemen Karyawan IT Directorate",
                                              style: TextStyle(
                                                  color: Color(0xFF344054),
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w600),
                                            )
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Center(
                                          child: SizedBox(
                                            height: 458,
                                            width: 786,
                                            child: SvgPicture.asset(
                                                'assets/images/background_v2.svg',
                                                fit: BoxFit.fill),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        left: null,
                        right: 40,
                        bottom: 60,
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: 470,
                          child: AutoTabsRouter(
                            routes: [
                              FormLogin(user: "", pass: ""),
                              FormResetPasswordWidget()
                            ],
                            builder: (context, child) {
                              return child;
                            },
                          ),
                        ),
                        // child: FormResetPasswordWidget(),
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
