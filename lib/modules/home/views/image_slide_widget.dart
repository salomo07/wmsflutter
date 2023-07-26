import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wmsflutter/modules/home/models/Photos.dart';

import '../../../bloc/photo/photo_bloc.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        if (state is PhotoLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is PhotoDone) {
          return SizedBox(
            height: 550,
            child: ListView(
              children: List.generate(state.photo.photos.length, (index) {
                return Container(
                    margin: EdgeInsets.only(bottom: 30),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    height: 70,
                    child: Row(children: [
                      Image.network(state.photo.photos[index].url),
                      Text(state.photo.photos[index].title)
                    ]));
              }),
            ),
          );
        } else {
          return SizedBox();
        }
      },
    );
  }
}
