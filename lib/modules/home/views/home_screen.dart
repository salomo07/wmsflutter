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
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                color: Color(0xff45BCC7),
                height: 50,
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Text(
                      "Hai, $xxx ",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        color: Colors.white,
                        fontFamily: "ABeeZee",
                      ),
                    ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: double.maxFinite,
                    child: ImageSliderWidget(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 2,
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Color(0xffF1F2F6),
        bottomNavigationBar: BottomNavBarWidget());
  }
}
