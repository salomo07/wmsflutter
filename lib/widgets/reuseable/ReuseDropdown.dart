import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ReuseDropdownWidget extends StatelessWidget {
  ReuseDropdownWidget(
      {super.key,
      this.datas = const [],
      this.isExpanded = true,
      this.hint = "Select",
      this.onChanged});
  List datas;
  String hint;
  bool isExpanded;
  void Function(dynamic)? onChanged = (val) {
    print(val);
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 46,
      child: DropdownButtonFormField(
        isExpanded: true,
        hint: Text(
          hint,
          style: const TextStyle(fontSize: 14),
        ),
        decoration: const InputDecoration(
          // suffixIcon: Icon(Icons.keyboard_arrow_down_outlined),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(9), right: Radius.circular(9))),
        ),
        items: datas.map<DropdownMenuItem<dynamic>>((dynamic value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(fontSize: 14),
            ),
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}
