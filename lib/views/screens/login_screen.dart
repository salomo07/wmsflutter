import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/config/responsive.dart';
import 'package:wmsflutter/views/widgets/login/formloginwidget.dart';

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
                            child: SizedBox(
                              height: 700,
                              width: 786,
                              child: Column(
                                children: [
                                  Column(
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
