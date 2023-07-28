import 'package:flutter/material.dart';
import 'package:wmsflutter/modules/home/views/home_imageslide_widget.dart';
import 'package:wmsflutter/modules/widgets/drawer_widget.dart';
import '../../widgets/bottom_navBar.dart';

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
          drawer: DrawerWidget(),
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
  const BodyHomeWidget({
    super.key,
  });

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
            margin: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            decoration: BoxDecoration(
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
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          color: const Color(0xff45BCC7),
          height: 50,
          child: const Row(
            children: [
              SizedBox(width: 20),
              Text(
                "Salomo Sitompul",
                style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontFamily: "ABeeZee",
                ),
              )
            ],
          ),
        ),
        Container(
          color: Colors.amberAccent,
          height: 500,
          width: double.infinity,
        )
      ],
    );
  }
}
