import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';
import 'package:wmsflutter/bloc/Login/login_bloc.dart';
import 'package:wmsflutter/widgets/login/tabsignature.dart';
import 'package:intl/intl.dart';

import '../../reuseable/ReuseButton.dart';
import '../../reuseable/ReuseDropdown.dart';
import '../../reuseable/ReuseLabel.dart';
import '../../reuseable/ReuseTextFormField.dart';

class DialogRegWidget extends StatefulWidget {
  final BuildContext ctx;
  const DialogRegWidget({super.key, required this.ctx});

  @override
  State<DialogRegWidget> createState() => _DialogRegWidgetState();
}

class _DialogRegWidgetState extends State<DialogRegWidget> {
  String? strNik,
      strNama,
      strEmail,
      strJabatan,
      strDepartment,
      strTanggalMasuk,
      strStatus;
  DateTime selectedDate = DateTime.now();
  Wrap titleDialog() {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      direction: Axis.vertical,
      children: [
        Text(
          'Daftar Akun Baru',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: const Color(0xFF344054),
              fontSize: 30),
        ),
        Text(
          'Isi data Akun berikut dengan benar ya!',
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              color: const Color(0xFF344054),
              fontSize: 16),
        )
      ],
    );
  }

  SignatureController _signatureController = SignatureController(
    onDrawStart: () {
      print("XXXX");
    },
    penStrokeWidth: 5,
    penColor: Colors.black54,
    exportBackgroundColor: Color(0xFFededed),
  );

  bool isValid = true;
  TextEditingController _dateController = TextEditingController();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1990),
        lastDate: DateTime(2100));
    if (picked != null)
      setState(() {
        isValid = true;
        selectedDate = picked;
        _dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
        strTanggalMasuk = _dateController.text;
      });
  }

  LoginBloc loginBloc = LoginBloc();
  @override
  Widget build(BuildContext context) {
    void Function() tryRegister = () {
      // if (strNik == null ||
      //     strNama == null ||
      //     strEmail == null ||
      //     strJabatan == null ||
      //     strDepartment == null ||
      //     strTanggalMasuk == null) {
      //   setState(() {
      //     isValid = false;
      //   });
      //   print("Data belum lengkap");
      //   // SnackBar snackBar = SnackBar(
      //   //     content: const Text("Silahkan lengkapi data yang diperlukan..."));
      //   // ScaffoldMessenger.of(context).showSnackBar(snackBar);
      // } else {
      //   print("Data dikirim");
      //   loginBloc.add(TryRegister(jsonEncode(<String, String>{
      //     'nik': strNik!,
      //     'nama': strNama!,
      //     'email': strEmail!,
      //     'jabatan': strJabatan!,
      //     'departemen': strDepartment!,
      //     'tanggalMasuk': strTanggalMasuk!,
      //     'statusKaryawan': strStatus!,
      //   })));
      // }
      print("xxxx");
      loginBloc.add(TryRegister(jsonEncode(<String, String>{
        'nik': "1234",
        'nama': "Ganteng",
        'email': "qwe@gmail.com",
        'jabatan': "Sales",
        'departemen': "Marketing",
        'tanggalMasuk': "09/12/23",
        'statusKaryawan': "Magang",
      })));
    };
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: titleDialog(),
                ),
                const SizedBox(
                  height: 20,
                ),
                //************************* */
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                      height: 315,
                      child: SingleChildScrollView(
                          child: SizedBox(
                        width: 792,
                        height: 416,
                        child: Wrap(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 386,
                                    height: 416,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        children: [
                                          Wrap(
                                            runSpacing: 5,
                                            children: [
                                              SizedBox(
                                                height: 18,
                                                child: ReuseLabelWidget(
                                                  isMandatory: true,
                                                  fontSize: 12,
                                                  text: "NIK",
                                                ),
                                              ),
                                              ReuseTextFormFieldWidget(
                                                onChanged: (p0) {
                                                  setState(() {
                                                    isValid = true;
                                                    strNik = p0;
                                                  });
                                                },
                                                inputType: TextInputType.number,
                                                hint: "NIK",
                                                fontSize: 14,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Wrap(
                                            runSpacing: 5,
                                            children: [
                                              ReuseLabelWidget(
                                                isMandatory: true,
                                                fontSize: 12,
                                                text: "Nama",
                                              ),
                                              ReuseTextFormFieldWidget(
                                                onChanged: (p0) {
                                                  setState(() {
                                                    isValid = true;
                                                    strNama = p0;
                                                  });
                                                },
                                                heightField: 44,
                                                hint: "Nama",
                                                fontSize: 14,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Wrap(
                                            runSpacing: 5,
                                            children: [
                                              ReuseLabelWidget(
                                                text: "Email",
                                                isMandatory: true,
                                              ),
                                              ReuseTextFormFieldWidget(
                                                onChanged: (p0) {
                                                  setState(() {
                                                    isValid = true;
                                                    strEmail = p0;
                                                  });
                                                },
                                                hint: "Email",
                                                inputType:
                                                    TextInputType.emailAddress,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Wrap(
                                            runSpacing: 5,
                                            children: [
                                              ReuseLabelWidget(
                                                text: "Jabatan",
                                                isMandatory: true,
                                                fontSize: 12,
                                              ),
                                              ReuseDropdownWidget(
                                                onChanged: (p0) {
                                                  setState(() {
                                                    isValid = true;
                                                    strJabatan = p0;
                                                  });
                                                },
                                                datas: [
                                                  "Kurir",
                                                  "Sales",
                                                  "Sekuriti"
                                                ],
                                                hint: "Jabatan",
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 15,
                                          ),
                                          Wrap(
                                            runSpacing: 5,
                                            children: [
                                              ReuseLabelWidget(
                                                text: "Department",
                                                isMandatory: true,
                                              ),
                                              ReuseDropdownWidget(
                                                datas: [
                                                  "Kurir",
                                                  "Sales",
                                                  "Sekuriti"
                                                ],
                                                hint: "Department",
                                                onChanged: (p0) {
                                                  setState(() {
                                                    isValid = true;
                                                    strDepartment = p0;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 386,
                                    height: 425,
                                    color: Colors.white30,
                                    child: Column(
                                      children: [
                                        Wrap(
                                          runSpacing: 5,
                                          children: [
                                            SizedBox(
                                              height: 18,
                                              child: ReuseLabelWidget(
                                                text: "Tanggal Masuk",
                                                isMandatory: true,
                                              ),
                                            ),
                                            ReuseTextFormFieldWidget(
                                              controller: _dateController,
                                              onTap: () => _selectDate(context),
                                              hint: "Tanggal Masuk",
                                              suffixIcon:
                                                  Icons.calendar_today_outlined,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Wrap(
                                          runSpacing: 5,
                                          children: [
                                            ReuseLabelWidget(
                                                text:
                                                    "Status (Permanent / Outsource)"),
                                            ReuseDropdownWidget(
                                                onChanged: (p0) {
                                                  setState(() {
                                                    strStatus = p0;
                                                  });
                                                },
                                                datas: const [
                                                  "Permanent",
                                                  "Outsource",
                                                  "Magang"
                                                ],
                                                hint:
                                                    'Status (Permanent / Outsource)'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Wrap(
                                          runSpacing: 5,
                                          children: [
                                            ReuseLabelWidget(
                                              isMandatory: true,
                                              text: "Tanda Tangan",
                                            ),
                                            TabSignatureWidget(),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ))),
                ),
                SizedBox(
                  height: 13,
                ),
                Divider(
                  color: Color(0xFF98A2B3),
                ),
                SizedBox(
                  height: 13,
                ),
                Container(
                    height: 40,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: ReuseButtonWidget(
                            colorButton: 0xFFFFFFFF,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            colorBorder: 0xFFF97066,
                            colorTxt: 0xFFF97066,
                            text: "Batal",
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 5,
                          child: !isValid
                              ? ReuseButtonWidget(
                                  onPressed: () {},
                                  colorTxt: 0xFF98A2B3,
                                  colorButton: 0xFFF2F4F7,
                                  colorBorder: 0xFF98A2B3,
                                  text: "Daftar Sekarangx",
                                )
                              : ReuseButtonWidget(
                                  onPressed: tryRegister,
                                  colorTxt: 0xFF344054,
                                  colorButton: 0xFFFFDD00,
                                  text: "Daftar Sekarangz",
                                ),
                        )
                      ],
                    ))
              ],
            ),
          ),
          Positioned(
            right: 14,
            top: 10,
            child: IconButton(
              onPressed: () {
                _signatureController.dispose();
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
    );
  }

  // SizedBox formregisterMethod(BuildContext context) {
  //   return SizedBox(
  //     width: 792,
  //     height: 416,
  //     child: Wrap(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(right: 10),
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 width: 386,
  //                 height: 416,
  //                 child: SingleChildScrollView(
  //                   child: Column(
  //                     children: [
  //                       Wrap(
  //                         runSpacing: 5,
  //                         children: [
  //                           SizedBox(
  //                             height: 18,
  //                             child: ReuseLabelWidget(
  //                               isMandatory: true,
  //                               fontSize: 12,
  //                               text: "NIK",
  //                             ),
  //                           ),
  //                           ReuseTextFormFieldWidget(
  //                             controller: TextEditingController(),
  //                             inputType: TextInputType.number,
  //                             hint: "NIK",
  //                             fontSize: 14,
  //                           ),
  //                         ],
  //                       ),
  //                       const SizedBox(
  //                         height: 25,
  //                       ),
  //                       Wrap(
  //                         runSpacing: 5,
  //                         children: [
  //                           ReuseLabelWidget(
  //                             isMandatory: true,
  //                             fontSize: 12,
  //                             text: "Nama",
  //                           ),
  //                           ReuseTextFormFieldWidget(
  //                             controller: TextEditingController(),
  //                             heightField: 44,
  //                             // inputType: TextInputType.number,
  //                             hint: "Nama",
  //                             fontSize: 14,
  //                           ),
  //                         ],
  //                       ),
  //                       const SizedBox(
  //                         height: 25,
  //                       ),
  //                       Wrap(
  //                         runSpacing: 5,
  //                         children: [
  //                           ReuseLabelWidget(
  //                             text: "Email",
  //                             isMandatory: true,
  //                           ),
  //                           ReuseTextFormFieldWidget(
  //                             controller: TextEditingController(),
  //                             hint: "Email",
  //                             inputType: TextInputType.emailAddress,
  //                           ),
  //                         ],
  //                       ),
  //                       const SizedBox(
  //                         height: 25,
  //                       ),
  //                       Wrap(
  //                         runSpacing: 5,
  //                         children: [
  //                           ReuseLabelWidget(
  //                             text: "Jabatan",
  //                             isMandatory: true,
  //                             fontSize: 12,
  //                           ),
  //                           ReuseDropdownWidget(
  //                             onChanged: (p0) {
  //                               setState(() {
  //                                 context.widg = p0;
  //                               });
  //                               print("Ini dari dropdown" + p0);
  //                             },
  //                             datas: ["Kurir", "Sales", "Sekuriti"],
  //                             hint: "Jabatan",
  //                           ),
  //                         ],
  //                       ),
  //                       const SizedBox(
  //                         height: 15,
  //                       ),
  //                       Wrap(
  //                         runSpacing: 5,
  //                         children: [
  //                           ReuseLabelWidget(
  //                             text: "Department",
  //                             isMandatory: true,
  //                           ),
  //                           ReuseDropdownWidget(
  //                               datas: ["Kurir", "Sales", "Sekuriti"],
  //                               hint: "Department"),
  //                         ],
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.only(left: 10),
  //           child: Column(
  //             children: [
  //               Container(
  //                 width: 386,
  //                 height: 425,
  //                 color: Colors.white30,
  //                 child: Column(
  //                   children: [
  //                     Wrap(
  //                       runSpacing: 5,
  //                       children: [
  //                         SizedBox(
  //                           height: 18,
  //                           child: ReuseLabelWidget(
  //                             text: "Tanggal Masuk",
  //                             isMandatory: true,
  //                           ),
  //                         ),
  //                         ReuseTextFormFieldWidget(
  //                           controller: _dateController,
  //                           onTap: () => _selectDate(context),
  //                           hint: "Tanggal Masuk",
  //                           suffixIcon: Icons.calendar_today_outlined,
  //                         ),
  //                       ],
  //                     ),
  //                     SizedBox(
  //                       height: 25,
  //                     ),
  //                     Wrap(
  //                       runSpacing: 5,
  //                       children: [
  //                         ReuseLabelWidget(
  //                             text: "Status (Permanent / Outsource)"),
  //                         ReuseDropdownWidget(
  //                             datas: const ["Permanent", "Outsource", "Magang"],
  //                             hint: 'Status (Permanent / Outsource)'),
  //                       ],
  //                     ),
  //                     SizedBox(
  //                       height: 30,
  //                     ),
  //                     Wrap(
  //                       runSpacing: 5,
  //                       children: [
  //                         ReuseLabelWidget(
  //                           isMandatory: true,
  //                           text: "Tanda Tangan",
  //                         ),
  //                         TabSignatureWidget(),
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               )
  //             ],
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }
}
