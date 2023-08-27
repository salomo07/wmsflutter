import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/bloc/Login/login_bloc.dart';
import 'package:wmsflutter/config/AppsTheme.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  double sideBarWidth = 50, widthStandart = 208;
  final LoginBloc loginBloc = LoginBloc();
  bool isLoadingToken = true;

  @override
  void initState() {
    loginBloc.add(GetToken());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => loginBloc,
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is GetTokenSuccess) {
            if (state.r == "") {
              setState(() {
                context.router.pushNamed('/login');
              });
            } else {
              setState(() {
                isLoadingToken = false;
              });
            }
          } else if (state is GetTokenError) {
            setState(() {
              print("Error");
              isLoadingToken = false;
              context.router.pushNamed('/login');
            });
          }
        },
        builder: (context, state) {
          return isLoadingToken
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Scaffold(
                  drawerScrimColor: Colors.transparent,
                  appBar: AppBar(
                    title: Text("Test"),
                  ),
                  drawer: Drawer(
                    child: DrawerWidget(),
                  ),
                );
        },
      ),
    );
  }

  Container leftBar() {
    return Container(
      height: 774,
      // width: 208,
      width: sideBarWidth,
      color: Color(0xFFE5E5E5),
      child: Column(
        children: [
          Transform(
            transform: Matrix4.identity()
              ..translate(0.0, 0.0)
              ..rotateZ(-1.57),
            child: Container(
              width: 170,
              height: 235,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0xFF7B61FF)),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 150,
                    top: 20,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 195,
                        height: 48,
                        padding: const EdgeInsets.only(left: 16),
                        decoration: ShapeDecoration(
                          color: Color(0xFF00DEA3),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(children: []),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Dashboard',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.29,
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 8,
                              decoration: ShapeDecoration(
                                color: Color(0xFF00DEA3),
                                shape: OvalBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 84.43,
                    top: 20,
                    child: Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(1.57),
                      child: Container(
                        width: 195,
                        height: 48,
                        padding: const EdgeInsets.only(left: 16),
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 24,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 24,
                                    height: 24,
                                    child: Stack(children: []),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'Dashboard',
                              style: TextStyle(
                                color: Color(0xFFADB5CF),
                                fontSize: 18,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.29,
                              ),
                            ),
                          ],
                        ),
                      ),
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

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });
  final int colorPurple = 0xFF4D44B5;
  final int colorGray2=0xFFC1BBEB;
  final double iconSize = 35;
  final double fontSize = 18;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF4D44B5),
      height: 1016,
      width: 155,
      child: Wrap(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46),
              child: Center(
                child: Container(
                  color: Colors.amberAccent,
                  height: 70,
                  width: 200,
                  child: Text("Ini logo harusnya"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left:46),
              child: Container(
                // color: Colors.blueAccent,
                height: 704,
                width: 299,
                child: Column(children: [
                  Container(
                    height:64,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF3F4FF),
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(40) ,
                      bottomLeft: Radius.circular(40))
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child:Icon(Icons.home,size: iconSize,color: Color(this.colorPurple),),
                        ),
                        SizedBox(width: 15,),
                        Text("Dashboard",style: GoogleFonts.poppins(fontSize: fontSize,color: Color(this.colorPurple)),)
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
                    height:64,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child:Icon(Icons.dns_outlined,size: iconSize,color: Color(colorGray2),),
                        ),
                        const SizedBox(width: 15,),
                        Text("Master",style: GoogleFonts.poppins(fontSize: fontSize,color: Color(colorGray2)),)
                      ],
                    ),
                  ),
                ]),
              ),
            ),
        ],)
      ],),
    );
  }
}
