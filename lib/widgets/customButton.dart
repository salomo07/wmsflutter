import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget(
      {super.key,
      required this.text,
      this.colorButton = 0xFFFFDD00,
      this.colorBorder = 0xFF000000,
      this.colorTxt = 0xFF000000,
      this.height = 40,
      this.width = double.infinity,
      this.onPressed});

  String text;
  int colorButton, colorBorder, colorTxt;
  double height, width;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              disabledBackgroundColor: Color(colorButton),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              backgroundColor: Color(colorButton),
              side: BorderSide(color: Color(colorBorder))),
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: Color(colorTxt),
                fontWeight: FontWeight.w600,
                fontSize: 14),
          )),
    );
  }
}
