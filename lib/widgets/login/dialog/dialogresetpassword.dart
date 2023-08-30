import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseButton.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseLabel.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseTextFormField.dart';
import 'package:wmsflutter/bloc/Login/login_bloc.dart';

import '../../reuseable/ReuseDialog.dart';

final LoginBloc loginBloc = LoginBloc();

class DialogResetPasswordWidget extends StatefulWidget {
  const DialogResetPasswordWidget({super.key, this.token});
  final String? token;
  @override
  State<DialogResetPasswordWidget> createState() =>
      _DialogResetPasswordWidgetState();
}

class _DialogResetPasswordWidgetState extends State<DialogResetPasswordWidget> {
  TextEditingController edController1 = TextEditingController();
  TextEditingController edController2 = TextEditingController();
  bool hide = true;
  bool hide2 = true;
  String errorText = "";
  Widget notifsuccessreset = ReuseDialogWidget(
    title: "Password Berhasil Diupdate!",
    desc: "Selanjutnya, silahkan login dengan password terbaru",
    isUrl: false,
    txtButton: "Oke",
    url: 'images/dialog/successreg.svg',
  );
  Future<void> _showMyDialog(context, Widget widget) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return widget;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    void Function() resetPass = () {
      bool hasSpecialCharacters =
          edController1.text.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
      setState(() {
        errorText = "";
      });
      if (edController1.text == "" || edController2.text == "") {
        setState(() {
          errorText = "Silahkan isi password baru...";
        });
      } else if (edController1.text != edController2.text) {
        setState(() {
          errorText = "Kedua password harus sama...";
        });
      }
      // else if(edController1.text.length < 8){
      //   setState(() {
      //     errorText="Jumlah karakter harus 8 atau lebih";
      //   });
      // }
      // else if (!hasSpecialCharacters){
      //   setState(() {
      //     errorText="";
      //   });
      // }
      else {
        loginBloc.add(ResetPass(jsonEncode(<String, String>{
          'token': widget.token!,
          'password': edController1.text,
          'passwordKonfirmasi': edController1.text
        })));
      }
    };
    return BlocProvider(
      create: (context) => loginBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is ResetPassExpired) {
            const snackBar = SnackBar(
              content: Text("Link anda sudah expired / rusak"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state is ResetPassSuccess) {
            Navigator.pop(context);
            const snackBar = SnackBar(
              content: Text("Password berhasil diubah"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
            _showMyDialog(context, notifsuccessreset);
          } else {
            const snackBar = SnackBar(
              content: Text("Link anda sudah expired / rusak"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        child: Dialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: SizedBox(
            height: 448,
            width: 470,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.topLeft,
                                  child: ReuseLabelWidget(
                                      text: "Kata Sandi Baru",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(
                                height: 15,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: ReuseLabelWidget(
                                    text:
                                        "Silahkan atur ulang kata sandi baru anda",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              ReuseLabelWidget(
                                isMandatory: false,
                                text: "Kata Sandi Baru",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReuseTextFormFieldWidget(
                                hint: "Kata Sandi",
                                hide: hide,
                                controller: edController1,
                                suffixIcon: hide
                                    ? Icons.visibility_off_rounded
                                    : Icons.visibility,
                                suffixOnTap: () {
                                  setState(() {
                                    hide = !hide;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ReuseLabelWidget(
                                isMandatory: false,
                                text: "Konfirmasi Kata Sandi Baru",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              ReuseTextFormFieldWidget(
                                hint: "Kata Sandi",
                                errorText: errorText == "" ? null : errorText,
                                hide: hide2,
                                controller: edController2,
                                suffixIcon: hide2
                                    ? Icons.visibility_off_rounded
                                    : Icons.visibility,
                                suffixOnTap: () {
                                  setState(() {
                                    print(hide2);
                                    hide2 = !hide2;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              ReuseLabelWidget(
                                  text:
                                      "*Kata sandi yang dimasukan minimal harus 8 karakter dan kombinasi huruf kapital, Angka dan Spesial karakter",
                                  fontWeight: FontWeight.w400,
                                  color: 0xFF667085,
                                  fontSize: 14),
                              SizedBox(
                                height: 25,
                              ),
                              ReuseButtonWidget(
                                text: "Simpan",
                                colorButton: 0xFFFFDD00,
                                onPressed: resetPass,
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: 14,
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.highlight_off_outlined,
                      size: 30,
                    ),
                    color: const Color(0xFF98A2B3),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
