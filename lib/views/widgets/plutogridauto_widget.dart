import 'package:flutter/widgets.dart';

class PlutoGridAutomize extends StatelessWidget {
  List<dynamic> datas;
  PlutoGridAutomize({required this.datas}) {
    datas.first.toMap().forEach((key, value) {
      print(key);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("Ini plutogrid");
  }
}
