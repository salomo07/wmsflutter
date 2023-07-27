import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/photo/photo_bloc.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        if (state is PhotoLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PhotoDone) {
          print(state.photo.photos);
          return Container(
            color: Color(0xfffff5ec),
            child: ListView(
              children: List.generate(state.photo.photos.length, (index) {
                return Container(
                    margin: const EdgeInsets.only(bottom: 30),
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
