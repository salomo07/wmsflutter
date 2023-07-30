import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/photo/photo_bloc.dart';
import 'package:wmsflutter/modules/widgets/drawer_widget.dart';
import 'package:wmsflutter/splashscreen.dart';
import 'package:wmsflutter/errorscreen.dart';
import 'modules/home/views/home_screen.dart';
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
            body: BlocProvider<PhotoBloc>(
              create: (context) => PhotoBloc()
                ..add(GetPhoto(
                    url: 'https://api.slingacademy.com/v1/sample-data/photos')),
              child: BlocBuilder<PhotoBloc, PhotoState>(
                builder: (context, state) {
                  if (state is PhotoLoading) {
                    return const SplashScreen();
                  } else if (state is PhotoDone) {
                    return HomeScreen();
                  } else {
                    return ErrorScreen();
                  }
                },
              ),
            ),
          ),
        ),
      );
}
