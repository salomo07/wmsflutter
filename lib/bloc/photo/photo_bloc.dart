import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wmsflutter/models/Photos.dart';
import 'package:wmsflutter/services/photo/photo_service.dart';

part 'photo_event.dart';
part 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoBloc() : super(PhotoInitial()) {
    PhotoService photoService = PhotoService();
    on<GetPhoto>((event, emit) async {
      emit(PhotoLoading());
      try {
        Photo p = await photoService.fetchPhotos(event.url);
        emit(PhotoDone(p));
      } catch (e) {
        print('Error: $e');
        emit(PhotoError());
      }
    });
    on<PhotoDelete>((event, emit) async {
      emit(PhotoLoading());
      Photo p = await photoService.fetchPhotos(event.url);
      emit(PhotoDone(p));
    });
  }
}
