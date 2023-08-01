import 'package:flutter/widgets.dart';
import 'package:pluto_grid/pluto_grid.dart';

class PlutoGridAutomize extends StatelessWidget {
  List<dynamic> datas;
  PlutoGridAutomize({required this.datas}) {
    List<PlutoColumn> columns = [];
    datas.first.toMap().forEach((key, value) {
      print(key);
      columns.add(PlutoColumn(
        title: key,
        field: key,
        type: PlutoColumnType.text(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text("Ini plutogrid");
  }
}
