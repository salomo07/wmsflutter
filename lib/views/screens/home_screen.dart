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
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Scaffold(
                  drawerScrimColor: Colors.transparent,
                  appBar: AppBar(
                    title: Text("Test"),
                  ),
                  drawer: const Drawer(
                    child: DrawerWidget(),
                  ),
                );
        },
      ),
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });
  final int colorPurple = 0xFF4D44B5;
  final int colorGray2 = 0xFFC1BBEB;
  final double iconSize = 35;
  final double fontSize = 18;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xFF4D44B5),
      color: Colors.transparent,
      height: 1016,
      width: 155,
      child: Wrap(
        children: [
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
                    child: Text("Ini logo harusnyax"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 46),
                child: SizedBox(
                  // color: Colors.blueAccent,
                  height: 704,
                  width: 299,
                  child: Column(children: [
                    Container(
                      height: 64,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF3F4FF),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.home,
                              size: iconSize,
                              color: Color(this.colorPurple),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Dashboard",
                            style: GoogleFonts.poppins(
                                fontSize: fontSize,
                                color: Color(this.colorPurple)),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      height: 64,
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(
                              Icons.dns_outlined,
                              size: iconSize,
                              color: Color(colorGray2),
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Master",
                            style: GoogleFonts.poppins(
                                fontSize: fontSize, color: Color(colorGray2)),
                          )
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
