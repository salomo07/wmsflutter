import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/Book/book_bloc.dart';
import 'package:wmsflutter/views/widgets/home_imageslide_widget.dart';
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
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.black54,
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Administrator",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        spacing: 20,
                        children: [
                          ElevatedButton(onPressed: () {}, child: Text("PIC")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Group Bisnis")),
                          ElevatedButton(onPressed: () {}, child: Text("Role")),
                          ElevatedButton(onPressed: () {}, child: Text("Menu"))
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: BlocProvider(
                    create: (context) => bookBloc..add(GetBook()),
                    child: BooksTableWidget(),
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
