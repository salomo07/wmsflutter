import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLabelWidget extends StatelessWidget {
  CustomLabelWidget(
      {super.key,
      this.isMandatory = false,
      this.text = "Label",
      this.fontSize = 12,
      this.fontWeight = FontWeight.w400,
      this.align = TextAlign.center,
      this.color = 0xFF344054});

  bool isMandatory;
  String text;
  double fontSize;
  FontWeight fontWeight;
  TextAlign align;
  int color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            textAlign: align,
            text,
            style: GoogleFonts.inter(
                fontWeight: fontWeight,
                fontSize: fontSize,
                color: Color(color)),
          ),
        ),
        Text(
          isMandatory ? "*" : "",
          style: GoogleFonts.inter(
              fontWeight: fontWeight,
              color: const Color(0xFFF04438),
              fontSize: 12),
        ),
      ],
    );
  }
}
