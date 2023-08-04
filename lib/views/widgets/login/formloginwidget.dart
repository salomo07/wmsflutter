import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                            icon: Icon(
                                hide ? Icons.visibility_off : Icons.visibility),
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
