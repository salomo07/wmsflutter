part of 'book_bloc.dart';

@immutable
abstract class BookEvent {}

class GetBook extends BookEvent {
  GetBook();
}

class DeleteBook extends BookEvent {
  DeleteBook();
}
