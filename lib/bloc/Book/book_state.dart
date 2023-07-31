part of 'book_bloc.dart';

@immutable
abstract class BookState {}

class BookInitial extends BookState {}

class BookLoading extends BookState {}

class BookDone extends BookState {
  final List<Book> book;
  BookDone(this.book);
}

// ignore: must_be_immutable
class BookError extends BookState {
  Object msg;
  BookError(this.msg);
}
