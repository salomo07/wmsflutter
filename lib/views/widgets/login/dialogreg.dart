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
                        height: 62,
                        child: titleDialog(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 792,
                        height: 416,
                        color: Colors.green[300],
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: formregistrasiWidget(),
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

class formregistrasiWidget extends StatelessWidget {
  const formregistrasiWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Container(
                width: 386,
                height: 416,
                color: Colors.amberAccent,
                child: Column(
                  children: [
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Text(
                              "NIK",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "NIK",
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF98A2B3)),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(9),
                                    right: Radius.circular(9))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Nama",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Nama",
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF98A2B3)),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(9),
                                    right: Radius.circular(9))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Email",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF98A2B3)),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(9),
                                    right: Radius.circular(9))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Jabatan",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                          height: 48,
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            hint: Text('Jabatan'),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(9),
                                      right: Radius.circular(9))),
                            ),
                            items: ["Kurir", "Sales", "Sekuriti"]
                                .map<DropdownMenuItem<String>>((String value) {
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
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                          height: 48,
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            hint: Text('Department'),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(9),
                                      right: Radius.circular(9))),
                            ),
                            items: ["Kurir", "Sales", "Sekuriti"]
                                .map<DropdownMenuItem<String>>((String value) {
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
                        Row(
                          children: [
                            Text(
                              "Tanggal Masuk",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Tanggal Masuk",
                            suffixIcon: Icon(Icons.calendar_today_outlined),
                            border: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF98A2B3)),
                                borderRadius: BorderRadius.horizontal(
                                    left: Radius.circular(9),
                                    right: Radius.circular(9))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Status (Permanent / Outsource)",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                          height: 48,
                          child: DropdownButtonFormField(
                            isExpanded: true,
                            hint: Text('Status (Permanent / Outsource)'),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(9),
                                      right: Radius.circular(9))),
                            ),
                            items: ["Permanent", "Outsource", "Magang"]
                                .map<DropdownMenuItem<String>>((String value) {
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
                      height: 15,
                    ),
                    Wrap(
                      runSpacing: 5,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Tanda Tangan",
                              style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600, fontSize: 12),
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
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
