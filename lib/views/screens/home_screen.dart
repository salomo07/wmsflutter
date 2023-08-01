import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/book/book_bloc.dart';
import 'package:wmsflutter/bloc/photo/photo_bloc.dart';
import 'package:wmsflutter/config/responsive.dart';
import 'package:wmsflutter/views/widgets/home_imageslide_widget.dart';
import 'package:wmsflutter/views/widgets/plutogridauto_widget.dart';
import 'package:wmsflutter/views/widgets/table_user_widget.dart';
import 'package:wmsflutter/views/widgets/drawer_widget.dart';
import '../widgets/bottom_navbar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("xxx"),
            backgroundColor: const Color(0xff48bccf),
          ),
          drawer: const DrawerWidget(),
          body: BodyHomeWidget(),
          bottomNavigationBar: const BottomNavBarWidget()),
    );
  }
}

class DuaBarisWidget extends StatelessWidget {
  const DuaBarisWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex: 3, child: const ImageSliderWidget()),
      Expanded(flex: 5, child: const ImageSliderWidget()),
    ]);
  }
}

class BodyHomeWidget extends StatelessWidget {
  BodyHomeWidget({
    super.key,
  });
  BookBloc bookBloc = BookBloc();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Responsive.isDesktop(context)
            ? Expanded(flex: 3, child: Container(color: Colors.black54))
            : Center(),
        Expanded(
          flex: 8,
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Column(
              children: [
                Expanded(
                  child: BlocProvider(
                    create: (context) => bookBloc..add(GetBook()),
                    child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.greenAccent)),
                        child: PlutoGridAutomize()),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class XxxWidget extends StatelessWidget {
  const XxxWidget({
    super.key,
    required this.bookBloc,
  });

  final BookBloc bookBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => bookBloc..add(GetBook()),
      child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.greenAccent)),
          child: PlutoGridAutomize()),
    );
  }
}
