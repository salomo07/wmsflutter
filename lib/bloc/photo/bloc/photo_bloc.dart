import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:wmsflutter/modules/home/models/Photos.dart';
import 'package:wmsflutter/services/photo/photo_service.dart';

part 'photo_event.dart';
part 'photo_state.dart';

class PhotoBloc extends Bloc<PhotoEvent, PhotoState> {
  PhotoBloc() : super(PhotoInitial()) {
    PhotoService photoService = PhotoService();
    on<PhotoGet>((event, emit) async {
      emit(PhotoLoading());
      Photo p = await photoService.fetchPhotos(event.url);
      emit(PhotoLoaded(p));
    });
    on<PhotoDelete>((event, emit) async {
      emit(PhotoLoading());
      Photo p = await photoService.fetchPhotos(event.url);
      emit(PhotoLoaded(p));
    });
  }
}
