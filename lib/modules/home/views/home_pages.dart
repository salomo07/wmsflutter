import 'package:flutter/material.dart';

import '../../widgets/BottomNavBar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 50,
          ),
          Container(
            color: Color(0xff45BCC7),
            height: 50,
            child: Row(
              children: [
                SizedBox(width: 20),
                Text("Hai, ",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontFamily: "ABeeZee",

                ),),
                Text("Salomo Sitompul",
                  style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                    fontFamily: "ABeeZee",

                ),)
                ],
            ),
          ),
          
          Container(
            color: Colors.amber,
            height: 250,
          ),
          Container(
            color: Colors.black87,
            height: 250,
          ),
          Container(
            color: Colors.greenAccent,
            height: 250,
          ),
          Container(
            color: Colors.indigo,
            height: 250,
          ),
          Container(
            color: Colors.pink,
            height: 250,
          ),
          Container(
            color: Colors.teal,
            height: 250,
          ),
        ],
      ),
      backgroundColor: Color(0xffF1F2F6),
      bottomNavigationBar:BottomNavBarWidget()
    );
  }
}
