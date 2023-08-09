import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  CustomTextFormFieldWidget(
      {super.key,
      this.fontSize = 14,
      this.heightField = 44,
      this.hint = "Type here...",
      this.inputType = TextInputType.text});
  double fontSize, heightField;
  String hint;
  TextInputType inputType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        keyboardType: inputType,
        inputFormatters: inputType == TextInputType.number
            ? [FilteringTextInputFormatter.digitsOnly]
            : null,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          hintText: hint,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF98A2B3)),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(9), right: Radius.circular(9))),
        ),
      ),
    );
  }
}
