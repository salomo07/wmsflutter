import 'dart:core';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:wmsflutter/bloc/book/book_bloc.dart';
import 'package:qr_flutter/qr_flutter.dart';

class PlutoGridAutomize extends StatelessWidget {
  late final PlutoGridStateManager stateManager;
  List fields = [];
  createColumns(List<dynamic> datas) {
    //Disini bisa custome widget lohh "render"
    List<PlutoColumn> listColumns = [];
    fields = [];
    datas.first.toJson().forEach((key, value) {
      print(capitalize(key));
      if (key == 'isbn') {
        listColumns.add(PlutoColumn(
            title: capitalize(key),
            titleTextAlign: PlutoColumnTextAlign.center,
            field: key,
            type: PlutoColumnType.text(),
            renderer: (rendererContext) {
              return QrImageView(
                data: value,
                version: QrVersions.auto,
              );
            }));
      } else {
        listColumns.add(PlutoColumn(
            title: capitalize(key),
            titleTextAlign: PlutoColumnTextAlign.center,
            field: key,
            type: PlutoColumnType.text()));
      }
      fields.add(key);
    });
    return listColumns;
  }

  capitalize(String word) {
    return "${word[0].toUpperCase()}${word.substring(1)}";
  }

  createCell(var data) {
    Map<String, PlutoCell> cells = {};
    fields.forEach((element) {
      cells[element] = PlutoCell(
        value: data.toJson()[element],
      );
    });
    return cells;
  }

  createRows(List<dynamic> datas) {
    List<PlutoRow> listRows = [];
    datas.forEach((element) {
      listRows.add(PlutoRow(
        cells: createCell(element),
      ));
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
          return Padding(
              padding: EdgeInsets.all(20), child: PlutoGridDinamis(state));
        } else if (state is BookError) {
          return Text("Errorx");
        } else {
          return Center();
        }
      },
    );
  }

  PlutoGrid PlutoGridDinamis(BookDone state) {
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
  }
}
