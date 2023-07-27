import 'package:flutter/material.dart';
import 'package:wmsflutter/modules/home/views/image_slide_widget.dart';
import '../../widgets/BottomNavBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var xxx = "Ganteng";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("xxx"),
            backgroundColor: const Color(0xff48bccf),
          ),
          drawer: Drawer(
            backgroundColor: const Color(0xfffff5ec),
            child: ListView(padding: EdgeInsets.zero, children: [
              const DrawerHeaderWidget(),
              ListTile(
                title: const Text('Profile'),
                leading: Icon(Icons.person),
                onTap: () {},
              ),
              ListTile(
                title: const Text('ToDo'),
                leading: Icon(Icons.task),
                onTap: () {},
              ),
            ]),
          ),
          body: Row(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const ImageSliderWidget()),
              SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: const ImageSliderWidget()),
            ],
          ),
          bottomNavigationBar: const BottomNavBarWidget()),
    );
  }
}

class DrawerHeaderWidget extends StatelessWidget {
  const DrawerHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: BoxDecoration(),
        padding: EdgeInsets.all(5),
        child: Center(
          child: ListTile(
            title: Text(
              "Hallo,",
              style: TextStyle(fontSize: 10),
            ),
            subtitle: Text(
              "Salomo Sitompul sdrfwdsrsdr",
              style: TextStyle(
                  fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
            ),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://api.slingacademy.com/public/sample-photos/1.jpeg",
              ),
              // leading: CircleAvatar(
              //   backgroundColor: Colors.black,
              //   child: CircleAvatar(
              // backgroundImage: NetworkImage(
              //     "https://api.slingacademy.com/public/sample-photos/1.jpeg",),
            ),
            // ),
          ),
        ));
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
