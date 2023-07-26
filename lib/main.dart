import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/photo/photo_bloc.dart';
import 'package:wmsflutter/splashscreen.dart';
import 'package:wmsflutter/errorscreen.dart';
import 'modules/home/views/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final PhotoBloc photoBloc = PhotoBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Integrated One Solution",
      home: Scaffold(
        body: BlocProvider<PhotoBloc>(
          create: (context) => photoBloc
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
    );
  }
}
