import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogWidget extends StatefulWidget {
  const DialogWidget({
    super.key,
  });

  @override
  State<DialogWidget> createState() => _DialogWidgetState();
}

class _DialogWidgetState extends State<DialogWidget> {
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

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
      child: SizedBox(
        height: 856,
        width: 856,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(32),
              child: InteractiveViewer(
                child: Container(
                  // color: Colors.deepOrange,
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 72,
                        child: titleDialog(),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 792,
                        height: 406,
                        color: Colors.green[300],
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 396,
                                    height: 406,
                                    color: Colors.amberAccent,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 20),
                                          child: Wrap(
                                            runSpacing: 5,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "NIK",
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                    "*",
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xFFF04438),
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: "NIK",
                                                  border: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0xFF98A2B3)),
                                                      borderRadius: BorderRadius
                                                          .horizontal(
                                                              left: Radius
                                                                  .circular(9),
                                                              right: Radius
                                                                  .circular(
                                                                      9))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 20),
                                          child: Wrap(
                                            runSpacing: 5,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    "Nama",
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 12),
                                                  ),
                                                  Text(
                                                    "*",
                                                    style: GoogleFonts.inter(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color:
                                                            Color(0xFFF04438),
                                                        fontSize: 12),
                                                  ),
                                                ],
                                              ),
                                              TextFormField(
                                                decoration: InputDecoration(
                                                  hintText: "Nama",
                                                  border: const OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                          color: Color(
                                                              0xFF98A2B3)),
                                                      borderRadius: BorderRadius
                                                          .horizontal(
                                                              left: Radius
                                                                  .circular(9),
                                                              right: Radius
                                                                  .circular(
                                                                      9))),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 396,
                                    height: 406,
                                    color: Colors.white30,
                                    child: const Text("ssss"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
