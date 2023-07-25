part of 'photo_bloc.dart';

@immutable
abstract class PhotoEvent {}

class PhotoGet extends PhotoEvent {
  final String url;

  PhotoGet({required this.url});
}

class PhotoDelete extends PhotoEvent {
  final String url;

  PhotoDelete({required this.url});
}
