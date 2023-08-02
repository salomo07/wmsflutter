import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(children: [
          Expanded(
              flex: 8,
              child: Padding(
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
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(24))),
                child: Text("sdasdasdasd"),
              )),
        ]),
        Positioned(
          top: 60,
          right: 50,
          bottom: 60,
          child: Container(
            padding: EdgeInsets.all(32),
            width: 470,
            height: 564,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Container(
              color: Colors.black12,
              width: MediaQuery.of(context).size.width,
              child: Wrap(
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
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'SSS',
                        ),
                      ),
                      TextFormField()
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
