import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                                    'Sign In',
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
    // return xxxWidget();
  }
}

class xxxWidget extends StatelessWidget {
  const xxxWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 1920,
          height: 1152,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Color(0xFF0B1437)),
          child: Stack(
            children: [
              Positioned(
                left: 290,
                top: 49,
                child: Container(
                  width: 1610,
                  height: 1081,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 50,
                        top: 1057,
                        child: Container(
                          width: 1528,
                          height: 24,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            '© 2022 Horizon UI. All Rights Reserved. Made with love by ',
                                        style: GoogleFonts.dmSans(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.28,
                                            height: 1.71),
                                      ),
                                      TextSpan(
                                        text: 'Simmmple!',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          height: 1.71,
                                          letterSpacing: -0.28,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1161,
                                top: 0,
                                child: Text(
                                  'Marketplace',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 1.71,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1283,
                                top: 0,
                                child: Text(
                                  'License',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 1.71,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1375,
                                top: 0,
                                child: Text(
                                  'Terms of Use',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 1.71,
                                    letterSpacing: -0.28,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 1500,
                                top: 0,
                                child: Text(
                                  'Blog',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
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
                      Positioned(
                        left: 30,
                        top: 0,
                        child: Text(
                          'Pages / Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.71,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 26,
                        child: Text(
                          'Profile',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 34,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 1.24,
                            letterSpacing: -0.68,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 97,
                        child: Container(
                          width: 1610,
                          height: 939,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 1610,
                                height: 365,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 552,
                                      height: 365,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF111C44),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 17,
                                            top: 18,
                                            child: Container(
                                              width: 518,
                                              height: 131,
                                              decoration: ShapeDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                      "https://via.placeholder.com/518x131"),
                                                  fit: BoxFit.fill,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 210,
                                            top: 205,
                                            child: Container(
                                              width: 132,
                                              height: 51,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Text(
                                                      'Adela Parkson',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 1.60,
                                                        letterSpacing: -0.40,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 11,
                                                    top: 27,
                                                    child: Text(
                                                      'Product Designer',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFA3AED0),
                                                        fontSize: 14,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height: 1.71,
                                                        letterSpacing: -0.28,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 150,
                                            top: 282,
                                            child: Container(
                                              width: 252,
                                              height: 48,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 194,
                                                    top: 0,
                                                    child: Container(
                                                      width: 58,
                                                      height: 48,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 9,
                                                            top: 0,
                                                            child: Text(
                                                              '274',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1,
                                                                letterSpacing:
                                                                    -0.48,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 28,
                                                            child: Text(
                                                              'Followers',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFA3AED0),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.43,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 91,
                                                    top: 0,
                                                    child: Container(
                                                      width: 58,
                                                      height: 48,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 7,
                                                            top: 0,
                                                            child: Text(
                                                              '9.7k',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1,
                                                                letterSpacing:
                                                                    -0.48,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 28,
                                                            child: Text(
                                                              'Followers',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFA3AED0),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.43,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 34,
                                                      height: 48,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 7,
                                                            top: 0,
                                                            child: Text(
                                                              '17',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 24,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                height: 1,
                                                                letterSpacing:
                                                                    -0.48,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 28,
                                                            child: Text(
                                                              'Posts',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFA3AED0),
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.43,
                                                                letterSpacing:
                                                                    -0.28,
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
                                            left: 233,
                                            top: 103,
                                            child: Container(
                                              width: 87,
                                              height: 87,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 87,
                                                    height: 87,
                                                    child: Stack(
                                                      children: [
                                                        Positioned(
                                                          left: 0,
                                                          top: 0,
                                                          child: Container(
                                                            width: 87,
                                                            height: 87,
                                                            decoration:
                                                                ShapeDecoration(
                                                              color: Color(
                                                                  0xFF4218FF),
                                                              shape:
                                                                  OvalBorder(),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: -4.58,
                                                          top: -4.58,
                                                          child: Container(
                                                            width: 91.58,
                                                            height: 115.62,
                                                            decoration:
                                                                BoxDecoration(
                                                              image:
                                                                  DecorationImage(
                                                                image: NetworkImage(
                                                                    "https://via.placeholder.com/92x116"),
                                                                fit:
                                                                    BoxFit.fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Positioned(
                                                          left: 0,
                                                          top: 0,
                                                          child: Container(
                                                            width: 87,
                                                            height: 87,
                                                            decoration:
                                                                ShapeDecoration(
                                                              shape: OvalBorder(
                                                                side: BorderSide(
                                                                    width: 2,
                                                                    color: Color(
                                                                        0xFF111C44)),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      width: 381,
                                      height: 365,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF111C44),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 90,
                                            top: 158,
                                            child: Container(
                                              height: 86,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 31,
                                                    top: 0,
                                                    child: Text(
                                                      'Your storage',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 24,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 1.33,
                                                        letterSpacing: -0.48,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 38,
                                                    child: SizedBox(
                                                      width: 201,
                                                      height: 48,
                                                      child: Text(
                                                        'Supervise your drive space in the easiest way',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFFA3AED0),
                                                          fontSize: 16,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.62,
                                                          letterSpacing: -0.32,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 141,
                                            top: 44,
                                            child: Container(
                                              width: 100,
                                              height: 100,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 100,
                                                      height: 100,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape: OvalBorder(),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 27,
                                                    top: 27,
                                                    child: Container(
                                                      width: 46,
                                                      height: 46,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child:
                                                          Stack(children: []),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 20,
                                            top: 297,
                                            child: Container(
                                              width: 341,
                                              height: 39,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 29,
                                                    child: Opacity(
                                                      opacity: 0.10,
                                                      child: Container(
                                                        width: 341,
                                                        height: 10,
                                                        decoration:
                                                            ShapeDecoration(
                                                          color: Colors.white,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        42),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 29,
                                                    child: Container(
                                                      width: 230,
                                                      height: 10,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF7551FF),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(42),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 3,
                                                    top: 0,
                                                    child: SizedBox(
                                                      width: 50,
                                                      height: 18,
                                                      child: Text(
                                                        '25.6 Gb',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.71,
                                                          letterSpacing: -0.28,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 297,
                                                    top: 0,
                                                    child: SizedBox(
                                                      width: 44,
                                                      child: Text(
                                                        '50 Gb',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.71,
                                                          letterSpacing: -0.28,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 324,
                                            top: 18,
                                            child: Container(
                                              width: 37,
                                              height: 37,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 37,
                                                      height: 37,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 6,
                                                    top: 7,
                                                    child: Container(
                                                      width: 24,
                                                      height: 24,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child:
                                                          Stack(children: []),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      width: 617,
                                      height: 365,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF111C44),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 27,
                                            top: 27,
                                            child: Container(
                                              width: 268,
                                              height: 311,
                                              decoration: ShapeDecoration(
                                                color: Color(0xFF1B254B),
                                                shape: RoundedRectangleBorder(
                                                  side: BorderSide(
                                                    width: 0.50,
                                                    color: Colors.white
                                                        .withOpacity(
                                                            0.10000000149011612),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(13),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 331,
                                            top: 113,
                                            child: SizedBox(
                                              width: 244,
                                              height: 75,
                                              child: Text(
                                                'Stay on the pulse of distributed projects with an anline whiteboard to plan, coordinate and discuss',
                                                style: TextStyle(
                                                  color: Color(0xFFA3AED0),
                                                  fontSize: 16,
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.62,
                                                  letterSpacing: -0.32,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 331,
                                            top: 74,
                                            child: Text(
                                              'Complete your profile',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                                height: 1.33,
                                                letterSpacing: -0.48,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 53,
                                            top: 121,
                                            child: Container(
                                              width: 215,
                                              height: 151,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 68,
                                                    top: 0,
                                                    child: Container(
                                                      width: 80,
                                                      height: 80,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Stack(children: [
                                                        Text("zzzz"),
                                                      ]),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 51,
                                                    top: 92,
                                                    child: Text(
                                                      'Upload Files',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 20,
                                                        fontFamily: 'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 1.60,
                                                        letterSpacing: -0.40,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 131,
                                                    child: SizedBox(
                                                      width: 215,
                                                      height: 20,
                                                      child: Text(
                                                        'PNG, JPG and GIF files are allowed',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color:
                                                              Color(0xFF8E9AB9),
                                                          fontSize: 12,
                                                          fontFamily: 'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.67,
                                                          letterSpacing: -0.24,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 332,
                                            top: 262,
                                            child: Container(
                                              width: 140,
                                              height: 46,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 140,
                                                    height: 46,
                                                    decoration: ShapeDecoration(
                                                      color: Color(0xFF7551FF),
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    'Publish now',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 14,
                                                      fontFamily: 'DM Sans',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.71,
                                                      letterSpacing: -0.28,
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
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 1610,
                                height: 554,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 512,
                                      height: 554,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF111C44),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 31,
                                            top: 23,
                                            child: Text(
                                              'All Projects',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                                height: 1.33,
                                                letterSpacing: -0.48,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 31,
                                            top: 70,
                                            child: SizedBox(
                                              width: 456,
                                              height: 48,
                                              child: Text(
                                                'Here you can find more details about your projects. Keep you user engaged by providing meaningful information.',
                                                style: TextStyle(
                                                  color: Color(0xFFA3AED0),
                                                  fontSize: 16,
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.62,
                                                  letterSpacing: -0.32,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 31,
                                            top: 159,
                                            child: Container(
                                              width: 450,
                                              height: 364,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 450,
                                                      height: 108,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 79,
                                                            height: 80,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child:
                                                                      Container(
                                                                    width: 79,
                                                                    height: 80,
                                                                    decoration:
                                                                        ShapeDecoration(
                                                                      color: Color(
                                                                          0xFFC4C4C4),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: -31,
                                                                  top: 0,
                                                                  child:
                                                                      Container(
                                                                    width: 142,
                                                                    height: 80,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image:
                                                                          DecorationImage(
                                                                        image: NetworkImage(
                                                                            "https://via.placeholder.com/142x80"),
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 249,
                                                            height: 39,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 82,
                                                                  top: 19,
                                                                  child: Text(
                                                                    'See project details',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 71,
                                                                  top: 19,
                                                                  child: Text(
                                                                    '•',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFA3AED0),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 19,
                                                                  child: Text(
                                                                    'Project #1',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFA3AED0),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child: Text(
                                                                    'Technology behind the Blockchain',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height: 1,
                                                                      letterSpacing:
                                                                          -0.32,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Stack(
                                                                children: [
                                                                  Text("zzzz"),
                                                                ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 128,
                                                    child: Container(
                                                      width: 450,
                                                      height: 108,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 79,
                                                            height: 80,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child:
                                                                      Container(
                                                                    width: 79,
                                                                    height: 80,
                                                                    decoration:
                                                                        ShapeDecoration(
                                                                      color: Color(
                                                                          0xFFC4C4C4),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: -14,
                                                                  top: -31,
                                                                  child:
                                                                      Container(
                                                                    width: 96,
                                                                    height: 120,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image:
                                                                          DecorationImage(
                                                                        image: NetworkImage(
                                                                            "https://via.placeholder.com/96x120"),
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 241,
                                                            height: 39,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 85,
                                                                  top: 19,
                                                                  child: Text(
                                                                    'See project details',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 74,
                                                                  top: 19,
                                                                  child: Text(
                                                                    '•',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFA3AED0),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 19,
                                                                  child: Text(
                                                                    'Project #2',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFA3AED0),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child: Text(
                                                                    'Greatest way to a good Economy',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height: 1,
                                                                      letterSpacing:
                                                                          -0.32,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Stack(
                                                                children: [
                                                                  Text("zzzz"),
                                                                ]),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 256,
                                                    child: Container(
                                                      width: 450,
                                                      height: 108,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width: 79,
                                                            height: 80,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child:
                                                                      Container(
                                                                    width: 79,
                                                                    height: 80,
                                                                    decoration:
                                                                        ShapeDecoration(
                                                                      color: Color(
                                                                          0xFFC4C4C4),
                                                                      shape: RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8)),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: -37,
                                                                  top: 0,
                                                                  child:
                                                                      Container(
                                                                    width: 148,
                                                                    height: 83,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      image:
                                                                          DecorationImage(
                                                                        image: NetworkImage(
                                                                            "https://via.placeholder.com/148x83"),
                                                                        fit: BoxFit
                                                                            .fill,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 223,
                                                            height: 39,
                                                            child: Stack(
                                                              children: [
                                                                Positioned(
                                                                  left: 85,
                                                                  top: 19,
                                                                  child: Text(
                                                                    'See project details',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 74,
                                                                  top: 19,
                                                                  child: Text(
                                                                    '•',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFA3AED0),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 19,
                                                                  child: Text(
                                                                    'Project #3',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Color(
                                                                          0xFFA3AED0),
                                                                      fontSize:
                                                                          14,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height:
                                                                          1.43,
                                                                      letterSpacing:
                                                                          -0.28,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Positioned(
                                                                  left: 0,
                                                                  top: 0,
                                                                  child: Text(
                                                                    'Most essential tips for Burnout',
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          16,
                                                                      fontFamily:
                                                                          'DM Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      height: 1,
                                                                      letterSpacing:
                                                                          -0.32,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 18,
                                                            height: 18,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Stack(
                                                                children: [
                                                                  Text("zzzz"),
                                                                ]),
                                                          ),
                                                        ],
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
                                    const SizedBox(width: 20),
                                    Container(
                                      width: 617,
                                      height: 554,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF111C44),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 31,
                                            top: 23,
                                            child: Text(
                                              'General Information',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                                height: 1.33,
                                                letterSpacing: -0.48,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 31,
                                            top: 70,
                                            child: SizedBox(
                                              width: 555,
                                              height: 111,
                                              child: Text(
                                                'As we live, our hearts turn colder. Cause pain is what we go through as we become older. We get insulted by others, lose trust for those others. We get back stabbed by friends. It becomes harder for us to give others a hand. We get our heart broken by people we love, even that we give them all...',
                                                style: TextStyle(
                                                  color: Color(0xFFA3AED0),
                                                  fontSize: 16,
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.62,
                                                  letterSpacing: -0.32,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 31,
                                            top: 212,
                                            child: Container(
                                              width: 555,
                                              height: 311,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 268,
                                                      height: 91,
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 23,
                                                        left: 22,
                                                        right: 106,
                                                        bottom: 29,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Education',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA3AED0),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.43,
                                                              letterSpacing:
                                                                  -0.28,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 3),
                                                          Text(
                                                            'Stanford University',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1,
                                                              letterSpacing:
                                                                  -0.32,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 287,
                                                    top: 0,
                                                    child: Container(
                                                      width: 268,
                                                      height: 91,
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 23,
                                                        left: 22,
                                                        right: 80,
                                                        bottom: 29,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Languages',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA3AED0),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.43,
                                                              letterSpacing:
                                                                  -0.28,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 3),
                                                          Text(
                                                            'English, Spanish, Italian',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1,
                                                              letterSpacing:
                                                                  -0.32,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 110,
                                                    child: Container(
                                                      width: 268,
                                                      height: 91,
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 23,
                                                        left: 22,
                                                        right: 134,
                                                        bottom: 29,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Department',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA3AED0),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.43,
                                                              letterSpacing:
                                                                  -0.28,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 3),
                                                          Text(
                                                            'Product Design',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1,
                                                              letterSpacing:
                                                                  -0.32,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 287,
                                                    top: 110,
                                                    child: Container(
                                                      width: 268,
                                                      height: 91,
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 23,
                                                        left: 22,
                                                        right: 116,
                                                        bottom: 29,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Work History',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA3AED0),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.43,
                                                              letterSpacing:
                                                                  -0.28,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 3),
                                                          Text(
                                                            'Google, Facebook',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1,
                                                              letterSpacing:
                                                                  -0.32,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 0,
                                                    top: 220,
                                                    child: Container(
                                                      width: 268,
                                                      height: 91,
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 23,
                                                        left: 22,
                                                        right: 99,
                                                        bottom: 29,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Organization',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA3AED0),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.43,
                                                              letterSpacing:
                                                                  -0.28,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 3),
                                                          Text(
                                                            'Simmmple Web LLC',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1,
                                                              letterSpacing:
                                                                  -0.32,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 287,
                                                    top: 220,
                                                    child: Container(
                                                      width: 268,
                                                      height: 91,
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 23,
                                                        left: 22,
                                                        right: 155,
                                                        bottom: 29,
                                                      ),
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                        ),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Birthday',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xFFA3AED0),
                                                              fontSize: 14,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.43,
                                                              letterSpacing:
                                                                  -0.28,
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                              height: 3),
                                                          Text(
                                                            '20 July 1986',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'DM Sans',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1,
                                                              letterSpacing:
                                                                  -0.32,
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
                                        ],
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Container(
                                      width: 421,
                                      height: 554,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF111C44),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 31,
                                            top: 23,
                                            child: Text(
                                              'Notifications',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                                height: 1.33,
                                                letterSpacing: -0.48,
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 359,
                                            top: 20,
                                            child: Container(
                                              width: 37,
                                              height: 37,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 37,
                                                      height: 37,
                                                      decoration:
                                                          ShapeDecoration(
                                                        color:
                                                            Color(0xFF1B254B),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    left: 6,
                                                    top: 7,
                                                    child: Container(
                                                      width: 24,
                                                      height: 24,
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Stack(children: [
                                                        Text("zzzz"),
                                                      ]),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            left: 34,
                                            top: 85,
                                            child: Container(
                                              width: 281,
                                              height: 438,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    left: 0,
                                                    top: 414,
                                                    child: Container(
                                                      width: 281,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Email me when someone follows me',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF7551FF),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              19.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 368,
                                                    child: Container(
                                                      width: 203,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Subscribe to newsletter',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF1B254B),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              1.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 322,
                                                    child: Container(
                                                      width: 215,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Monthly product changes',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF1B254B),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              1.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 276,
                                                    child: Container(
                                                      width: 224,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'New launches and projects',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF7551FF),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              19.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 230,
                                                    child: Container(
                                                      width: 233,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Company news notifications',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF7551FF),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              19.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 184,
                                                    child: Container(
                                                      width: 249,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Meetups near you notifications',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF1B254B),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              1.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 138,
                                                    child: Container(
                                                      width: 242,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Rating reminders notifications',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF1B254B),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              1.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 92,
                                                    child: Container(
                                                      width: 215,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Buyer review notifications',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF7551FF),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              19.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 46,
                                                    child: Container(
                                                      width: 229,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Item comment notifications',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF1B254B),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              1.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                    left: 0,
                                                    top: 0,
                                                    child: Container(
                                                      width: 212,
                                                      height: 24,
                                                      child: Stack(
                                                        children: [
                                                          Positioned(
                                                            left: 51,
                                                            top: 0,
                                                            child: Text(
                                                              'Item update notifications',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 14,
                                                                fontFamily:
                                                                    'DM Sans',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                height: 1.71,
                                                                letterSpacing:
                                                                    -0.28,
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left: 0,
                                                            top: 3,
                                                            child: Container(
                                                              width: 36,
                                                              height: 18,
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 36,
                                                                    height: 18,
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Positioned(
                                                                          left:
                                                                              0,
                                                                          top:
                                                                              0,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                36,
                                                                            height:
                                                                                18,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Color(0xFF7551FF),
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(38.57),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Positioned(
                                                                          left:
                                                                              19.93,
                                                                          top:
                                                                              1.93,
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                14.14,
                                                                            height:
                                                                                14.14,
                                                                            decoration:
                                                                                ShapeDecoration(
                                                                              color: Colors.white,
                                                                              shape: OvalBorder(),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 1188,
                        top: 16,
                        child: Container(
                          width: 422,
                          height: 61,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 422,
                                  height: 61,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF111C44),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 370,
                                top: 10,
                                child: Container(
                                  width: 41,
                                  height: 41,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 41,
                                        height: 41,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 41,
                                                height: 41,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF4218FF),
                                                  shape: OvalBorder(),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: -4.10,
                                              top: -4.10,
                                              child: Container(
                                                width: 45.69,
                                                height: 57.40,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        "https://via.placeholder.com/46x57"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              left: 0,
                                              top: 0,
                                              child: Container(
                                                width: 41,
                                                height: 41,
                                                decoration: ShapeDecoration(
                                                    shape: OvalBorder()),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 326,
                                top: 18,
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
                                          child: Stack(children: [
                                            Text("zzzz"),
                                          ]),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 288,
                                top: 21,
                                child: Container(
                                  width: 18,
                                  height: 18,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [
                                    Text("zzzz"),
                                  ]),
                                ),
                              ),
                              Positioned(
                                left: 244,
                                top: 18,
                                child: Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [
                                    Text("zzzz"),
                                  ]),
                                ),
                              ),
                              Positioned(
                                left: 10,
                                top: 10,
                                child: Container(
                                  width: 214,
                                  height: 41,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        top: 0,
                                        child: Container(
                                          width: 214,
                                          height: 41,
                                          decoration: ShapeDecoration(
                                            color: Color(0xFF0B1437),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(49),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 42,
                                        top: 11,
                                        child: Text(
                                          'Search',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w400,
                                            height: 1.43,
                                            letterSpacing: -0.28,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        top: 15,
                                        child: Container(
                                          width: 11,
                                          height: 11,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration: ShapeDecoration(
                                                    shape: OvalBorder(
                                                      side: BorderSide(
                                                          width: 0.70,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Positioned(
                                                left: 11,
                                                top: 11,
                                                child: Transform(
                                                  transform: Matrix4.identity()
                                                    ..translate(0.0, 0.0)
                                                    ..rotateZ(-2.36),
                                                  child: Container(
                                                    width: 4.24,
                                                    decoration: ShapeDecoration(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        side: BorderSide(
                                                          width: 0.70,
                                                          strokeAlign: BorderSide
                                                              .strokeAlignCenter,
                                                          color: Colors.white,
                                                        ),
                                                      ),
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 290,
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
                        decoration: BoxDecoration(color: Color(0xFF111C44)),
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
                                                'Sign In',
                                                style: TextStyle(
                                                  color: Colors.white,
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
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      left: 0,
                                                      top: 0,
                                                      child: Container(
                                                        width: 24,
                                                        height: 24,
                                                        child: Stack(children: [
                                                          Text("zzzz"),
                                                        ]),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
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
                                                  color: Colors.white,
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
                                                child: Stack(children: [
                                                  Text("zzzz"),
                                                ]),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
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
                                                  color: Colors.white,
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
                                                child: Stack(children: [
                                                  Text("zzzz"),
                                                ]),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
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
                                                  color: Colors.white,
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
                                                child: Stack(children: [
                                                  Text("zzzz"),
                                                ]),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
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
                                                  color: Colors.white,
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
                                                child: Stack(children: [
                                                  Text("zzzz"),
                                                ]),
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
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
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
                                                  color: Colors.white,
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
                                                child: Stack(children: [
                                                  Text("zzzz"),
                                                ]),
                                              ),
                                            ),
                                            Positioned(
                                              left: 253,
                                              top: 0,
                                              child: Container(
                                                width: 4,
                                                height: 36,
                                                decoration: ShapeDecoration(
                                                  color: Color(0xFF7551FF),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
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
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                        height: 1,
                                      ),
                                    ),
                                    TextSpan(
                                        text: 'FREE',
                                        style: GoogleFonts.poppins(
                                          color: Colors.white,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w400,
                                          height: 1,
                                        )),
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
                                      color: Colors.white
                                          .withOpacity(0.10000000149011612),
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
                                    colors: [
                                      Color(0xFF858CFF),
                                      Color(0xFF4318FF)
                                    ],
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
                                          colors: [
                                            Color(0xFF858CFF),
                                            Color(0xFF4318FF)
                                          ],
                                        ),
                                        shape: OvalBorder(
                                          side: BorderSide(
                                              width: 2.50,
                                              color: Color(0xFF111C44)),
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
