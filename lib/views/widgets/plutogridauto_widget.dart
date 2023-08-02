import 'dart:core';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:wmsflutter/bloc/book/book_bloc.dart';
import 'package:wmsflutter/models/Book.dart';

class PlutoGridAutomize extends StatelessWidget {
  late final PlutoGridStateManager stateManager;
  List fields = [];
  createColumns(List<dynamic> datas) {
    List<PlutoColumn> listColumns = [];
    fields = [];
    datas.first.toMap().forEach((key, value) {
      listColumns.add(PlutoColumn(
        title: capitalize(key),
        field: key,
        type: PlutoColumnType.text(),
      ));
      fields.add(key);
    });
    return listColumns;
  }

  capitalize(String word) {
    word[0].toUpperCase();
    if (word.length > 1) {
      word.substring(1).toLowerCase();
    }
    return word;
  }

  createCell(var data) {
    // print(data);
    Map<String, PlutoCell> cells = {};
    fields.forEach((element) {
      cells[element] = PlutoCell(value: data.toMap()[element]);
    });
    return cells;
  }

  createRows(List<dynamic> datas) {
    List<PlutoRow> listRows = [];
    datas.forEach((element) {
      listRows.add(PlutoRow(
        cells: createCell(element),
      ));
      print(element.author);
    });
    return listRows;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(
      builder: (context, state) {
        if (state is BookLoading) {
          return Text("Harusnya Shimmer");
        } else if (state is BookDone) {
          return PlutoGrid(
            columns: createColumns(state.book),
            rows: createRows(state.book),
            onLoaded: (PlutoGridOnLoadedEvent event) {
              stateManager = event.stateManager;
              stateManager.setShowColumnFilter(true);
            },
            onChanged: (PlutoGridOnChangedEvent event) {
              print(event);
            },
            configuration: const PlutoGridConfiguration(),
          );
        } else {
          return Text("Errorxxx");
        }
      },
    );
  }
}
