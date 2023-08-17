import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wmsflutter/config/app_theme.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double sideBarWidth = 50, widthStandart = 208;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Test"),
      ),
      drawer: Drawer(
        child: DrawerWidget(),
      ),
      body: Container(
        color: AppThemeDark.background_all,
        child: Row(
          children: [
            GestureDetector(
              onHorizontalDragUpdate: (details) {
                if (details.localPosition.dx > 49 &&
                    details.localPosition.dx < 209) {
                  setState(() {
                    sideBarWidth = details.localPosition.dx;
                    print(sideBarWidth);
                  });
                }
              },
              child: leftBar(),
            ),
            Expanded(
              child: Container(
                color: AppThemeDark.background_expanded,
              ),
            ),
            Container(
              height: 774,
              width: 317,
              color: AppThemeDark.background_all,
              child: Container(
                // color: AppThemeDark.background_expanded,
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFFAFBFC),
                  ),
                  // child:
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container leftBar() {
    return Container(
      height: 774,
      // width: 208,
      width: sideBarWidth,
      color: AppThemeDark.background_all,
      child: Wrap(
        children: [
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.amberAccent,
            child: Center(
              child: Icon(Icons.ad_units, size: 50),
            ),
          ),
          Container(
            color: Colors.cyan,
            height: 500,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_outlined,
                          color: AppThemeDark.menu_actived,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 10, right: 10),
//                         child: Icon(
//                           Icons.dashboard_outlined,
//                           color: AppThemeDark.menu_actived,
//                           size: 24,
//                         ),
//                       ),
//                       Text(
//                         "Dashboard",
//                         style: GoogleFonts.sora(
//                           fontSize: 17,
//                           color: AppThemeDark.menu_actived,
//                         ),
//                       )
//                     ],
//                   ),
class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      height: 1152,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 290,
            height: 1152,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 31,
                  top: 168,
                  child: Container(
                    width: 259,
                    height: 316,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 2,
                          top: 280,
                          child: Container(
                            width: 257,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 36,
                                  top: 3,
                                  child: Text(
                                    'Sign Inx',
                                    style: GoogleFonts.dmSans(
                                      color: Color(0xFFA3AED0),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      height: 1.88,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 6,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 24,
                                            height: 24,
                                            child: Stack(children: []),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 253,
                                  top: 0,
                                  child: Container(
                                    width: 4,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          top: 224,
                          child: Container(
                            width: 257,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 36,
                                  top: 3,
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(
                                      color: Color(0xFFA3AED0),
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.88,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 6,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: []),
                                  ),
                                ),
                                Positioned(
                                  left: 253,
                                  top: 0,
                                  child: Container(
                                    width: 4,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          top: 168,
                          child: Container(
                            width: 257,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 36,
                                  top: 3,
                                  child: Text(
                                    'Kanban',
                                    style: TextStyle(
                                      color: Color(0xFFA3AED0),
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.88,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 6,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: []),
                                  ),
                                ),
                                Positioned(
                                  left: 253,
                                  top: 0,
                                  child: Container(
                                    width: 4,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 112,
                          child: Container(
                            width: 259,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 38,
                                  top: 3,
                                  child: Text(
                                    'Tables',
                                    style: TextStyle(
                                      color: Color(0xFFA3AED0),
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.88,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 4,
                                  child: Container(
                                    width: 28,
                                    height: 28,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: []),
                                  ),
                                ),
                                Positioned(
                                  left: 255,
                                  top: 0,
                                  child: Container(
                                    width: 4,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          top: 56,
                          child: Container(
                            width: 257,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 36,
                                  top: 3,
                                  child: Text(
                                    'NFT Marketplace',
                                    style: TextStyle(
                                      color: Color(0xFFA3AED0),
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 1.88,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 6,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: []),
                                  ),
                                ),
                                Positioned(
                                  left: 253,
                                  top: 0,
                                  child: Container(
                                    width: 4,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 2,
                          top: 0,
                          child: Container(
                            width: 257,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 36,
                                  top: 3,
                                  child: Text(
                                    'Dashboard',
                                    style: TextStyle(
                                      color: Color(0xFF2B3674),
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 1.88,
                                      letterSpacing: -0.32,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 6,
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(),
                                    child: Stack(children: []),
                                  ),
                                ),
                                Positioned(
                                  left: 253,
                                  top: 0,
                                  child: Container(
                                    width: 4,
                                    height: 36,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF4218FF),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25),
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
                  ),
                ),
                Positioned(
                  left: 54,
                  top: 56,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'HORIZON ',
                          style: TextStyle(
                            color: Color(0xFF2B3674),
                            fontSize: 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text: 'FREE',
                          style: TextStyle(
                            color: Color(0xFF2B3674),
                            fontSize: 26,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 130,
                  child: Container(
                    width: 290,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFF4F7FE),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 31,
                  top: 937,
                  child: Container(
                    width: 228,
                    height: 190,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.71, -0.71),
                        end: Alignment(-0.71, 0.71),
                        colors: [Color(0xFF858CFF), Color(0xFF4318FF)],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 94,
                          height: 94,
                          decoration: ShapeDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.71, -0.71),
                              end: Alignment(-0.71, 0.71),
                              colors: [Color(0xFF858CFF), Color(0xFF4318FF)],
                            ),
                            shape: OvalBorder(
                              side:
                                  BorderSide(width: 2.50, color: Colors.white),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x1E7090B0),
                                blurRadius: 40,
                                offset: Offset(0, 18),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 175,
                          child: Text(
                            'Upgrade to PRO',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 1.75,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 229,
                          child: Text(
                            'to get access to all features! Connect with Venus World! ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFE9EDF7),
                              fontSize: 14,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              height: 1.71,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
