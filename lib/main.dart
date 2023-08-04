import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wmsflutter/views/screens/login_screen.dart';
import 'package:wmsflutter/views/widgets/drawer_widget.dart';
import 'package:wmsflutter/views/screens/splash_screen.dart';
import 'views/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  // String? appname="Indomaret";
  // if(dotenv.env['APP_NAME']!=null){appname=dotenv.env['APP_NAME'];}
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          title: "Ini App",
          home: Scaffold(
            backgroundColor: Colors.white,
            body: FutureBuilder(
              future: Future.delayed(Duration(seconds: 0)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SplashScreen();
                } else {
                  return const LoginScreen();
                }
              },
            ),
          ),
        ),
      );
}
