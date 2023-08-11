import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';
import 'package:wmsflutter/widgets/customButton.dart';
import 'package:wmsflutter/widgets/customDropdown.dart';
import 'package:wmsflutter/widgets/customLabel.dart';
import 'package:wmsflutter/widgets/customTextFormField.dart';
import 'package:wmsflutter/widgets/login/tabsignature.dart';
import 'package:intl/intl.dart';

class DialogRegWidget extends StatefulWidget {
  const DialogRegWidget({
    super.key,
  });

  @override
  State<DialogRegWidget> createState() => _DialogRegWidgetState();
}

class _DialogRegWidgetState extends State<DialogRegWidget> {
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
        selectedDate = picked;
        print(selectedDate);
        _dateController.text = DateFormat('dd-MM-yyyy').format(selectedDate);
      });
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(
    //   Duration(seconds: 2),
    //   () {
    //     setState(() {
    //       isValid = !isValid;
    //     });
    //   },
    // );
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: Column(
        children: [
          Container(
            width: 856,
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
                            height: 359,
                            child: SingleChildScrollView(
                                child: formregisterMethod(context))),
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
                                child: CustomButtonWidget(
                                  colorButton: 0xFFFFFFFF,
                                  onPressed: () {
                                    print("Batal");
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
                                    ? CustomButtonWidget(
                                        onPressed: () {},
                                        colorTxt: 0xFF98A2B3,
                                        colorButton: 0xFFF2F4F7,
                                        colorBorder: 0xFF98A2B3,
                                        text: "Daftar Sekarang",
                                      )
                                    : CustomButtonWidget(
                                        onPressed: () {},
                                        colorTxt: 0xFF344054,
                                        colorButton: 0xFFFFDD00,
                                        text: "Daftar Sekarang",
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
          ),
        ],
      ),
    );
  }

  SizedBox formregisterMethod(BuildContext context) {
    return SizedBox(
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
                              child: CustomLabelWidget(
                                isMandatory: true,
                                fontSize: 12,
                                text: "NIK",
                              ),
                            ),
                            CustomTextFormFieldWidget(
                              controller: TextEditingController(),
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
                            CustomLabelWidget(
                              isMandatory: true,
                              fontSize: 12,
                              text: "Nama",
                            ),
                            CustomTextFormFieldWidget(
                              controller: TextEditingController(),
                              heightField: 44,
                              // inputType: TextInputType.number,
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
                            CustomLabelWidget(
                              text: "Email",
                              isMandatory: true,
                            ),
                            CustomTextFormFieldWidget(
                              controller: TextEditingController(),
                              hint: "Email",
                              inputType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            CustomLabelWidget(
                              text: "Jabatan",
                              isMandatory: true,
                              fontSize: 12,
                            ),
                            CustomDropdownWidget(
                              datas: ["Kurir", "Sales", "Sekuriti"],
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
                            CustomLabelWidget(
                              text: "Department",
                              isMandatory: true,
                            ),
                            CustomDropdownWidget(
                                datas: ["Kurir", "Sales", "Sekuriti"],
                                hint: "Department"),
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
                            child: CustomLabelWidget(
                              text: "Tanggal Masuk",
                              isMandatory: true,
                            ),
                          ),
                          CustomTextFormFieldWidget(
                            controller: _dateController,
                            onTap: () => _selectDate(context),
                            hint: "Tanggal Masuk",
                            suffixIcon: Icons.calendar_today_outlined,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          CustomLabelWidget(
                              text: "Status (Permanent / Outsource)"),
                          CustomDropdownWidget(
                              datas: const ["Permanent", "Outsource", "Magang"],
                              hint: 'Status (Permanent / Outsource)'),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Wrap(
                        runSpacing: 5,
                        children: [
                          CustomLabelWidget(
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
    );
  }
}
