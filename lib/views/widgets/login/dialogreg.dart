import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:signature/signature.dart';

final SignatureController _controller = SignatureController(
  penStrokeWidth: 5,
  penColor: Colors.red,
  exportBackgroundColor: Colors.blue,
);

// INITIALIZE. RESULT IS A WIDGET, SO IT CAN BE DIRECTLY USED IN BUILD METHOD
var _signatureCanvas = Signature(
  controller: SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.red,
    exportBackgroundColor: Colors.blue,
  ),
  width: 380,
  height: 216,
  backgroundColor: Colors.lightBlueAccent,
);

class DialogRegWidget extends StatefulWidget {
  const DialogRegWidget({
    super.key,
  });

  @override
  State<DialogRegWidget> createState() => _DialogRegWidgetState();
}

class _DialogRegWidgetState extends State<DialogRegWidget> {
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
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 65,
                      child: titleDialog(),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const formregistrasiWidget(),
                    Expanded(
                      child: Container(
                        height: 40,
                        width: 792,
                        color: Colors.amberAccent,
                      ),
                    )
                  ],
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

// _selectDate()
class formregistrasiWidget extends StatelessWidget {
  const formregistrasiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 792,
      height: 416,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  SizedBox(
                    width: 386,
                    height: 416,
                    child: Column(
                      children: [
                        Wrap(
                          runSpacing: 5,
                          children: [
                            SizedBox(
                              height: 18,
                              child: Row(
                                children: [
                                  Text(
                                    "NIK",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFFF04438),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 44,
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: const InputDecoration(
                                  hintText: "NIK",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF98A2B3)),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Nama",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "*",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF04438),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 44,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Nama",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF98A2B3)),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Email",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "*",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF04438),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 44,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF98A2B3)),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Jabatan",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "*",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF04438),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 54,
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                hint: Text(
                                  'Jabatan',
                                  style: TextStyle(fontSize: 10),
                                ),
                                decoration: const InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.keyboard_arrow_down_outlined),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                                items: [
                                  "Kurir",
                                  "Sales",
                                  "Sekuriti"
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Department",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "*",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF04438),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 44,
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                hint: const Text('Department'),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                                items: [
                                  "Kurir",
                                  "Sales",
                                  "Sekuriti"
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ],
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
                    height: 416,
                    color: Colors.white30,
                    child: Column(
                      children: [
                        Wrap(
                          runSpacing: 5,
                          children: [
                            SizedBox(
                              height: 18,
                              child: Row(
                                children: [
                                  Text(
                                    "Tanggal Masuk",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12),
                                  ),
                                  Text(
                                    "*",
                                    style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        color: const Color(0xFFF04438),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 44,
                              child: TextFormField(
                                onTap: () {},
                                decoration: const InputDecoration(
                                  suffixIcon:
                                      Icon(Icons.calendar_today_outlined),
                                  hintText: "Tanggal Masuk",
                                  border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF98A2B3)),
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Status (Permanent / Outsource)",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "*",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF04438),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 44,
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                hint: const Text(
                                    'Status (Permanent / Outsource)'),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.horizontal(
                                          left: Radius.circular(9),
                                          right: Radius.circular(9))),
                                ),
                                items: [
                                  "Permanent",
                                  "Outsource",
                                  "Magang"
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Wrap(
                          runSpacing: 5,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Tanda Tangan",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                                Text(
                                  "*",
                                  style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFFF04438),
                                      fontSize: 12),
                                ),
                              ],
                            ),
                            // TabBar(
                            //   tabs: [Text("uiii"), Text("uiiixxx")],
                            // ),
                            _signatureCanvas
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
      ),
    );
  }
}
