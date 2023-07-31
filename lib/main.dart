import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wmsflutter/views/widgets/drawer_widget.dart';
import 'package:wmsflutter/views/screens/splash_screen.dart';
import 'views/screens/home_screen.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
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
          title: dotenv.env['APP_NAME'] != null ? "ddd" : "Indomaret",
          home: Scaffold(
            body: FutureBuilder(
              future: Future.delayed(Duration(seconds: 2)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const SplashScreen();
                } else {
                  return HomeScreen();
                }
              },
            ),
          ),
        ),
      );
}
