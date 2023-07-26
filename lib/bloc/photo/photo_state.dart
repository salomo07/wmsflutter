part of 'photo_bloc.dart';

@immutable
abstract class PhotoState {}

class PhotoInitial extends PhotoState {}

class PhotoLoading extends PhotoState {}

class PhotoDone extends PhotoState {
  final Photo photo;

  PhotoDone(this.photo);
}

class PhotoError extends PhotoState {}
