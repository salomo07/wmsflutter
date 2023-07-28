import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/photo/photo_bloc.dart';
import 'package:wmsflutter/modules/widgets/drawer_widget.dart';
import 'package:wmsflutter/splashscreen.dart';
import 'package:wmsflutter/errorscreen.dart';
import 'modules/home/views/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          title: "One Solution",
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
