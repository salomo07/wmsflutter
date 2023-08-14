import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/book/book_bloc.dart';
import 'package:wmsflutter/config/responsive.dart';
import 'package:wmsflutter/widgets/home_imageslide.dart';
import 'package:wmsflutter/widgets/plutogridauto_widget.dart';
import 'package:wmsflutter/widgets/drawer.dart';
import '../../widgets/bottom_navbar.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
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
                    child: PlutoGridAutomize(),
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
          decoration:
              BoxDecoration(border: Border.all(color: Colors.greenAccent)),
          child: PlutoGridAutomize()),
    );
  }
}
