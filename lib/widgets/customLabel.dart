import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLabelWidget extends StatelessWidget {
  CustomLabelWidget(
      {super.key,
      this.isMandatory = false,
      this.text = "Label",
      this.fontSize = 12});
  bool isMandatory;
  String text;
  double fontSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600, fontSize: fontSize),
        ),
        Text(
          isMandatory ? "*" : "",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              color: const Color(0xFFF04438),
              fontSize: 12),
        ),
      ],
    );
  }
}
