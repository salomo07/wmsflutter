import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/config/responsive.dart';
import 'package:wmsflutter/widgets/drawer.dart';

@RoutePage()
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Widget selectBody() {
    if (Responsive.isDesktop(context) == true) {
      print("isDesktop");
      return bodyDesktop();
    } else if (Responsive.isTablet(context) == true) {
      print("isTablet");
      return bodyTablet();
    } else {
      print("isMobile");
      return bodyMobile();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      body: selectBody(),
      // appBar: AppBar(
      //   title: Text("xxxx"),
      // )
    );
    // return Container(
    //   decoration: BoxDecoration(color: Color.fromRGBO(240, 242, 245, 1)),
    //   height: MediaQuery.of(context).size.height,
    //   width: MediaQuery.of(context).size.width,
    //   child: ,
    // );
  }

  Widget bodyDesktop() {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: maxHeight,
      width: maxWidth,
      child: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/background/landing.jpg',
                  fit: BoxFit.fill)),
          Center(
            child: Container(
              height: maxHeight,
              width: maxWidth,
              decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 82, 99)),
            ),
          ),
          Center(
            child: Container(
              height: 495,
              width: 408,
              // color: Colors.amberAccent,
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    child: Container(
                      height: 471,
                      width: 408,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: headerForm(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container headerForm() {
    return Container(
      height: 147,
      width: 377,
      decoration: BoxDecoration(
          color: Color(0xFFE93B77),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        children: [
          Text(
            "Sign In",
            style: GoogleFonts.reggaeOne(fontSize: 22, color: Colors.white),
          ),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.email_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.email_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.email_outlined))
            ],
          )
        ],
      ),
    );
  }

  Widget bodyTablet() {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: maxHeight,
      width: maxWidth,
      child: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/background/landing.jpg',
                  fit: BoxFit.fill)),
          Center(
            child: Container(
              height: maxHeight,
              width: maxWidth,
              decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 82, 99)),
            ),
          ),
          Center(
            child: Container(
              height: 495,
              width: 408,
              // color: Colors.amberAccent,
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    child: Container(
                      height: 471,
                      width: 408,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 147,
                      width: 377,
                      decoration: BoxDecoration(
                          color: Color(0xFFE93B77),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bodyMobile() {
    double maxHeight = MediaQuery.of(context).size.height;
    double maxWidth = MediaQuery.of(context).size.width;
    return Container(
      height: maxHeight,
      width: maxWidth,
      child: Stack(
        children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset('assets/images/background/landing.jpg',
                  fit: BoxFit.fill)),
          Center(
            child: Container(
              height: maxHeight,
              width: maxWidth,
              decoration: BoxDecoration(color: Color.fromRGBO(79, 79, 82, 99)),
            ),
          ),
          Center(
            child: Container(
              height: 495,
              width: 408,
              // color: Colors.amberAccent,
              child: Stack(
                children: [
                  Positioned(
                    top: 24,
                    child: Container(
                      height: 471,
                      width: 408,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 147,
                      width: 377,
                      decoration: BoxDecoration(
                          color: Color(0xFFE93B77),
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
