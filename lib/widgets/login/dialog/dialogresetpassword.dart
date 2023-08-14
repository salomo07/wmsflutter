import 'package:flutter/material.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseButton.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseLabel.dart';
import 'package:wmsflutter/widgets/reuseable/ReuseTextFormField.dart';

class ResetPasswordWidget extends StatefulWidget {
  const ResetPasswordWidget({super.key});

  @override
  State<ResetPasswordWidget> createState() => _ResetPasswordWidgetState();
}

class _ResetPasswordWidgetState extends State<ResetPasswordWidget> {
  TextEditingController edController1 = TextEditingController();
  TextEditingController edController2 = TextEditingController();
  bool hide = true;
  bool hide2 = true;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: SizedBox(
        height: 448,
        width: 470,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(32),
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
                                print(hide);
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
                            hide: hide2,
                            controller: edController1,
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
                            onPressed: () {},
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
    );
  }
}
