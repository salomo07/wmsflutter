import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wmsflutter/utils/routes.dart';
import 'package:wmsflutter/views/screens/login_screen.dart';
import 'package:wmsflutter/views/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // String? appname="Indomaret";
  // if(dotenv.env['APP_NAME']!=null){appname=dotenv.env['APP_NAME'];}
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) => MaterialApp.router(
        color: Colors.amberAccent,
        routerConfig: _appRouter.config(),
      );
}
