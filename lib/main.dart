import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/bloc/photo/bloc/photo_bloc.dart';
import 'package:wmsflutter/modules/home/models/Photos.dart';
import 'package:wmsflutter/splash.dart';
import 'modules/home/views/home_pages.dart';

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
            ..add(PhotoGet(
                url: 'https://api.slingacademy.com/v1/sample-data/photos'))
            ..add(PhotoDelete(
                url: 'https://api.slingacademy.com/v1/sample-data/photos')),
          child: BlocBuilder<PhotoBloc, PhotoState>(
            builder: (context, state) {
              if (state is PhotoLoading) {
                return SplashScreen();
              } else if (state is PhotoLoaded) {
                return ListView(
                  children: List.generate(state.photo.photos.length,
                      (index) => Text(state.photo.photos[index].title)),
                );
              } else {
                return Text("Eror load");
              }
            },
          ),
        ),
      ),
    );
  }
}
