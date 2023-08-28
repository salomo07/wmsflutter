import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/bloc/Login/login_bloc.dart';
import 'package:wmsflutter/widgets/login/dialog/dialogreg.dart';
import 'package:wmsflutter/widgets/login/dialog/dialogresetpassword.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseButton.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseDialog.dart';

import 'dialog/dialogresetpassword.dart';

@RoutePage()
class FormLogin extends StatefulWidget {
  const FormLogin({super.key, @pathParam this.token});
  final String? token;
  @override
  State<FormLogin> createState() => _FormLoginState();
}
Future<void> _showMyDialog(context, Widget widget) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return widget;
    },
  );
}
class _FormLoginState extends State<FormLogin> {
  bool hide = true;
  TextEditingController ted1 = TextEditingController();
  TextEditingController ted2 = TextEditingController();
  String errorSuff1 = "";
  String errorSuff2 = "";

  

  @override
  void initState() {   
    super.initState(); 
    WidgetsBinding.instance.addPostFrameCallback((_) {
        if (widget.token! != "") {
        // print("Ini token : "+widget.token!);
        // setState(() {
          _showMyDialog(context, DialogResetPasswordWidget(token:widget.token));
        // });
        
      }
    });
    
    
  }

  Widget notifsuccessreg = ReuseDialogWidget(
    title: "Data Berhasil Terkirim!",
    desc: "Selanjutnya data kamu akan diverifikasi oleh admin",
    isUrl: false,
    txtButton: "Oke",
    url: 'images/dialog/successreg.svg',
  );
  Widget notiffailsreg = ReuseDialogWidget(
    title: "Maaf, Terjadi Kesalahan",
    desc:
        "Request yang kamu lakukan gagal, mohon untuk mencoba beberapa saat lagi",
    isUrl: false,
    txtButton: "Oke",
    url: 'images/dialog/notifgagal.svg',
  );

  @override
  Widget build(BuildContext context) {
    final tabsRouter = AutoTabsRouter.of(context);
    Widget notifpassexpired = ReuseDialogWidget(
      onPressed: () {
        _showMyDialog(context, DialogResetPasswordWidget());
      },
      title: "Kata Sandi Kadaluarsa",
      desc: "Lakukan pembaruan kata sandi untuk dapat melanjutkan",
      isUrl: false,
      txtButton: "Perbarui Sekarang",
      url: 'images/dialog/dialogexpired.svg',
    );
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          if (state.r.status == 200) {
            print("Ini menuju Home");
            context.router.pushNamed('/home');
          }
        }
        if (state is LoginError) {
          if (ted1.text != "" && ted2.text != "") {
            setState(() {
              errorSuff2 = "Kombinasi NIK dan Kata Sandi tidak sesuai";
            });
          }
        }
      },
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(32),
          width: 470,
          height: 664,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.7),
                  spreadRadius: 1,
                  blurRadius: 70,
                  offset: const Offset(0, 8), // changes position of shadow
                ),
              ]),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Wrap(
                runSpacing: 15,
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Masuk",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600, fontSize: 30)),
                      ),
                      Text(
                        "Kamu harus masuk terlebih dahulu untuk melanjutkan",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400, fontSize: 16),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "NIK",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        controller: ted1,
                        decoration: InputDecoration(
                          suffixIcon: errorSuff1 == ""
                              ? null
                              : const Icon(Icons.error_outline_rounded,
                                  color: Colors.redAccent),
                          hintText: "NIK",
                          errorText: errorSuff1 != "" ? errorSuff1 : null,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Text(
                          "Kata Sandi",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                      ),
                      TextFormField(
                        controller: ted2,
                        obscureText: hide,
                        decoration: InputDecoration(
                            hintText: "Kata Sandi",
                            border: const OutlineInputBorder(),
                            errorText: errorSuff2 != "" ? errorSuff2 : null,
                            suffixIcon: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(hide
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                  onPressed: () {
                                    setState(() {
                                      hide = !hide;
                                    });
                                  },
                                ),
                                errorSuff2 == ""
                                    ? const Text("")
                                    : const Padding(
                                        padding: EdgeInsets.only(right: 8),
                                        child: Icon(Icons.error_outline_rounded,
                                            color: Colors.redAccent),
                                      )
                              ],
                            )),
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                errorSuff1 = "";
                                errorSuff2 = "";
                              });
                              if (ted1.text == "") {
                                setState(() {
                                  errorSuff1 =
                                      "Data tidak boleh ada yang kosong";
                                });
                              }
                              if (ted2.text == "") {
                                setState(() {
                                  errorSuff2 =
                                      "Data tidak boleh ada yang kosong";
                                });
                              } else {
                                context
                                    .read<LoginBloc>()
                                    .add(TryLogin(jsonEncode(<String, String>{
                                      'nik': ted1.text,
                                      'password': ted2.text,
                                    })));
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100)),
                                backgroundColor: const Color(0xFFFFDD00)),
                            child: Text(
                              "Masuk",
                              style: GoogleFonts.inter(
                                  color: const Color(0xFF344054),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                            )),
                      ),
                      const SizedBox(height: 16),
                      ReuseButtonWidget(
                        colorTxt: 0xFF53B1FD,
                        text: "Daftar Karyawan Baru",
                        colorBorder: 0xFF53B1FD,
                        colorButton: 0xFFFCFCFD,
                        onPressed: () {
                          _showMyDialog(context, DialogRegWidget());
                          // _showMyDialog(context, notifsuccessreg);
                          // _showMyDialog(context, notifpassexpired);
                          // _showMyDialog(context, notiffailsreg);
                        },
                      ),
                      ReuseButtonWidget(
                        colorTxt: 0xFF53B1FD,
                        text: "Contoh reset pass",
                        colorBorder: 0xFF53B1FD,
                        colorButton: 0xFFFCFCFD,
                        onPressed: () {
                          // _showMyDialog(context, DialogRegWidget());
                          // _showMyDialog(context, notifsuccessreg);
                          // _showMyDialog(context, notifpassexpired);
                          // _showMyDialog(context, notiffailsreg);
                          print("xxx");

                          _showMyDialog(context, notifpassexpired);
                          // _showMyDialog(context, DialogRegWidget());
                        },
                      ),
                      // SizedBox(
                      //   width: double.infinity,
                      //   height: 40,
                      //   child: ,
                      // ),
                    ],
                  ),
                  const SizedBox(
                    height: 79,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      Center(
                        child: Wrap(
                          children: [
                            Text("Lupa Kata Sandi?",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: const Color(0xFF344054))),
                            GestureDetector(
                              onTap: () {
                                tabsRouter.setActiveIndex(1);
                              },
                              child: Text(
                                " Atur ulang",
                                style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: const Color(0xFF175CD3)),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
