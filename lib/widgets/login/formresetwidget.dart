import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/bloc/Login/login_bloc.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseButton.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseLabel.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseTextFormField.dart';

@RoutePage()
class FormResetPasswordWidget extends StatefulWidget {
  FormResetPasswordWidget({super.key});

  @override
  State<FormResetPasswordWidget> createState() =>
      _FormResetPasswordWidgetState();
}
  String emailIsExist = "";

class _FormResetPasswordWidgetState extends State<FormResetPasswordWidget> {
  TextEditingController ted =TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    final tabsRouter = AutoTabsRouter.of(context);
    return Scaffold(
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
        child: Wrap(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Atur Ulang Kata Sandi",
                      style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600, fontSize: 30)),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Gunakan email yang terdaftar untuk atur ulang ",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ReuseLabelWidget(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: 0xFF344054,
                  text: "Email",
                ),
                SizedBox(
                  height: 5,
                ),
                ReuseTextFormFieldWidget(
                  onChanged: (p0) {
                    setState(() {
                        emailIsExist="";
                      });
                  },
                  controller: ted,
                  hint: "Email",
                  inputType: TextInputType.emailAddress,
                  errorText: emailIsExist == ""
                      ? null
                      : emailIsExist,
                ),
                SizedBox(
                  height: 40,
                ),
                ReuseButtonWidget(
                  text: "Atur Ulang Kata Sandi",
                  colorButton: 0xFFFFDD00,
                  colorTxt: 0xFF344054,
                  colorBorder: 0xFFFFDD00,
                  onPressed:() {
                    if(ted.text=="")
                    {
                      setState(() {
                        emailIsExist="Silahkan lengkapi email anda terlebih dahulu";
                      });
                    }
                    else{
                      // setState(() {emailIsExist="";});
                      context.read<LoginBloc>()
                                    .add(ReqResetPass(jsonEncode(<String, String>{
                                      'email': ted.text
                                    })));
                    }
                    
                  },
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kembali ke halaman?",
                          style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: const Color(0xFF344054)),
                        ),
                        GestureDetector(
                          onTap: () {
                            tabsRouter.setActiveIndex(0);
                          },
                          child: Text(
                            " Login",
                            style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: const Color(0xFF175CD3)),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
