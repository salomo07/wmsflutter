part of 'photo_bloc.dart';

@immutable
abstract class PhotoEvent {}

class GetPhoto extends PhotoEvent {
  final String url;

  GetPhoto({required this.url});
}

class PhotoDelete extends PhotoEvent {
  final String url;

  PhotoDelete({required this.url});
}
