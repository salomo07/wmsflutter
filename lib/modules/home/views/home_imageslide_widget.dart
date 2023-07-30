import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/photo/photo_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ImageSliderWidget extends StatelessWidget {
  const ImageSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhotoBloc, PhotoState>(
      builder: (context, state) {
        if (state is PhotoLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is PhotoDone) {
          return Container(
            color: Color(0xfffff5ec),
            child: ListView(
              children: List.generate(state.photo.photos.length, (index) {
                return Card(
                  child: InkWell(
                    onTap: () {},
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Image.network(state.photo.photos[index].url),
                          title: Text(state.photo.photos[index].title),
                          subtitle: Text(state.photo.photos[index].url),
                        ),
                      ],
                    ),
                  ),
                );
                // Container(
                //     margin: const EdgeInsets.only(bottom: 30),
                //     height: 70,
                //     child: Row(children: [
                //       Image.network(state.photo.photos[index].url),
                //       Text(state.photo.photos[index].title)
                //     ]));
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
