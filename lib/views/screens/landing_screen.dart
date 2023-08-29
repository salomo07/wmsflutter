import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wmsflutter/config/AppsTheme.dart';

@RoutePage()
class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppThemeDark.background2,
        // child: Wrap(
        //   children: [
        //     Expanded(
        //         child: Container(
        //       height: 200,
        //       width: 200,
        //       color: Colors.amberAccent,
        //     )),
        //     Expanded(
        //       child: Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.blueAccent,
        //       ),
        //     ),
        //     Expanded(
        //       child: Container(
        //         height: 200,
        //         width: 200,
        //         color: Colors.greenAccent,
        //       ),
        //     )
        //   ],
        // ),
      ),
    );
  }
}
