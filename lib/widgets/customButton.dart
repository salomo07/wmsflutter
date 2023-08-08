import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget(
      {super.key,
      this.child = const Text(""),
      this.color = const Color(0xFFFFDD00),
      this.onPressedFunc});
  Widget child;
  Color color;
  Function()? onPressedFunc;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            backgroundColor: color),
        onPressed: onPressedFunc,
        child: child);
  }
}
