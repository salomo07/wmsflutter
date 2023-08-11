import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  CustomTextFormFieldWidget(
      {super.key,
      this.fontSize = 14,
      this.heightField = 44,
      this.hint = "Type here...",
      this.inputType = TextInputType.text,
      this.controller,
      this.suffixIcon,
      this.onTap,
      this.suffixOnTap,
      this.hide = false,
      this.errorText});

  bool? hide;
  double fontSize, heightField;
  String? hint, errorText;
  TextInputType inputType;
  TextEditingController? controller;
  IconData? suffixIcon;
  Function()? onTap;
  Function()? suffixOnTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
        onTapOutside: (event) {
          print("onTapOutside");
        },
        onTap: onTap,
        controller: controller,
        obscureText: hide!,
        keyboardType: inputType,
        inputFormatters: inputType == TextInputType.number
            ? [FilteringTextInputFormatter.digitsOnly]
            : null,
        style: TextStyle(fontSize: fontSize),
        decoration: InputDecoration(
          errorText: errorText ?? null,
          hintText: hint,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFF98A2B3)),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(9), right: Radius.circular(9))),
        ),
      ),
    );
  }
}
