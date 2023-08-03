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
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                )
              : Center(),
          Positioned(
            top: 60,
            right: 40,
            bottom: 60,
            child: FormWidget(),
          )
        ],
      ),
    );
  }

  Stack StackXXX() {
    return Stack(
                      children: [
                        Positioned(
                            top: 37,
                            left: 115,
                            child: Image.asset('assets/images/drawkit.png')),
                        Positioned(
                            top: 63,
                            // right: 145,
                            left: 0,
                            bottom: 10,
                            child: SvgPicture.asset(
                              'assets/images/background_v2.svg',
                              fit: BoxFit.contain,
                            )),
                      ],
                    );
  }

  Container leftBar() {
    return Container(
      width: 786,
      child: Column(
        children: [
          Container(
            height: 88,
            width: 531,
            color: Colors.redAccent,
          ),
          Expanded(
            child: Container(
              height: 519,
              width: 786,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}

class FormWidget extends StatelessWidget {
  const FormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      width: 470,
      height: 564,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.7),
              spreadRadius: 1,
              blurRadius: 70,
              offset: const Offset(0, 8), // changes position of shadow
            ),
          ]),
      child: SizedBox(
        // color: Color(0xFF98A2B3),
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          runSpacing: 30,
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
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "NIK",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "NIK",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Kata Sandi",
                    style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Kata Sandi",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.remove_red_eye_rounded),
                        onPressed: () {},
                      )),
                ),
                SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100)),
                          backgroundColor: const Color(0xFFFFDD00)),
                      child: Text(
                        "Masuk",
                        style: GoogleFonts.inter(
                            color: Color(0xFF344054),
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
                          ),
                          backgroundColor: const Color(0xFFFCFCFD),
                          shadowColor: Color(0xFF53B1FD)),
                      child: Text(
                        "Daftar Karyawan Baru",
                        style: GoogleFonts.inter(
                            color: Color(0xFF53B1FD),
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}