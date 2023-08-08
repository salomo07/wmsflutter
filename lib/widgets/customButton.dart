import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget(
      {super.key,
      required this.text,
      this.color = 0xFFFFDD00,
      this.height = 40,
      this.width = double.infinity,
      this.onPressedFunc});
  String text;
  int color;
  double height, width;
  void Function()? onPressedFunc;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: () => onPressedFunc,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              backgroundColor: const Color(0xFFFFDD00)),
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: const Color(0xFF344054),
                fontWeight: FontWeight.w600,
                fontSize: 14),
          )),
    );
  }
}
// ElevatedButton(
//   style: ElevatedButton.styleFrom(
//       backgroundColor: Color(0xFFFFDD00)),
//   onPressed: () {},
//   child: Text(txtButton))