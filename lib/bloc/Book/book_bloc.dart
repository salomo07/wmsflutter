import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/Book.dart';
import '../../services/photo/book_service.dart';

part 'book_event.dart';
part 'book_state.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  BookBloc() : super(BookInitial()) {
    BookService bookService = BookService();
    on<GetBook>((event, emit) async {
      emit(BookInitial());
      try {
        List<Book> b = await bookService.fetchBooks();
        emit(BookDone(b));
      } catch (e) {
        print('Error $e');
        emit(BookError(e));
      }
    });
  }
}
