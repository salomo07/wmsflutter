import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/config/responsive.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Responsive.isDesktop(context)
              ? Padding(
                  padding: const EdgeInsets.only(top: 24, bottom: 24, left: 50),
                  child: Container(
                    padding: const EdgeInsets.all(17),
                    width: 1030,
                    height: 684,
                    decoration: const BoxDecoration(
                        color: Color(0xffffeb74),
                        borderRadius: BorderRadius.all(Radius.circular(24))),
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(24))),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0,
                            top: 25,
                            // bottom: 0,
                            // bottom: -20,
                            child: Container(
                              height: 700,
                              width: 786,
                              child: Column(
                                children: [
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 125),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/drawkit.png')
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Ad1Soul - Aplikasi Manajemen Karyawan IT Directorate",
                                          style: GoogleFonts.inter(
                                              color: const Color(0xFF344054),
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Center(
                                    child: Container(
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
                )
              : const Center(),
          const Positioned(
            top: 60,
            right: 40,
            bottom: 60,
            child: FormWidget(),
          )
        ],
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
  });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool hide = true;
  TextEditingController ted1 = TextEditingController();
  TextEditingController ted2 = TextEditingController();
  String errorSuff1 = "";
  String errorSuff2 = "";

  @override
  Widget build(BuildContext context) {
    return Container(
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
                            icon: const Icon(Icons.visibility_off),
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
                            errorSuff1 = "Data tidak boleh ada yang kosong";
                          });
                        }
                        if (ted2.text == "") {
                          setState(() {
                            errorSuff2 = "Data tidak boleh ada yang kosong";
                          });
                        } else {}
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
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: const BorderSide(color: Color(0xFF53B1FD))),
                        backgroundColor: const Color(0xFFFCFCFD),
                      ),
                      child: Text(
                        "Daftar Karyawan Baru",
                        style: GoogleFonts.inter(
                            color: const Color(0xFF53B1FD),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )),
                ),
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
                        onTap: () {},
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
    );
  }
}
