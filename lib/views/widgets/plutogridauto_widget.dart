import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:wmsflutter/bloc/book/book_bloc.dart';

class PlutoGridAutomize extends StatelessWidget {
  createColumns(){
    
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(builder: (context, state) {
      if(state is BookLoading)
      {
        return PlutoGrid(
                columns: createColumns(),
                rows: rows,
                columnGroups: columnGroups,
                onLoaded: (PlutoGridOnLoadedEvent event) {
                  stateManager = event.stateManager;
                  stateManager.setShowColumnFilter(true);
                },
                onChanged: (PlutoGridOnChangedEvent event) {
                  print(event);
                },
                configuration: const PlutoGridConfiguration(),
              );
      }else if(state is BookError){
        return Text("Errorxxx");
      }
      else{
        return Text("ini plutogrid");
      }
    },);
  }
}
