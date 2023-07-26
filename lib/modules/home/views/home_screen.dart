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
    return Scaffold(
        body: Container(
          width: double.infinity,
          // color: Color.fromARGB(255, 242, 242, 242),
          child: Container(
            height: double.infinity,
            color: Color.fromARGB(255, 242, 242, 242),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                // Container(
                //   color: Color(0xff45BCC7),
                //   height: 50,
                //   child: Row(
                //     children: [
                //       const SizedBox(width: 20),
                //       Text(
                //         "Hai, $xxx ",
                //         style: TextStyle(
                //           fontWeight: FontWeight.w200,
                //           color: Colors.white,
                //           fontFamily: "ABeeZee",
                //         ),
                //       ),
                //       Text(
                //         "Salomo Sitompul",
                //         style: TextStyle(
                //           overflow: TextOverflow.ellipsis,
                //           fontWeight: FontWeight.w200,
                //           color: Colors.white,
                //           fontFamily: "ABeeZee",
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                Container(
                  width: 500,
                  color: Colors.indigo,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                        Container(
                          color: Colors.limeAccent,
                          width: 50,
                
                        ),
                        Container(
                          color: Colors.lightBlueAccent,
                          width: 50,
                          ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget()
      );
  }
}
