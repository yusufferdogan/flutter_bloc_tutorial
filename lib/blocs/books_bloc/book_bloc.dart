import 'package:bloc_deneme/models/book.dart';
import 'package:bloc_deneme/service/book.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc.dart';

class BookBloc extends Bloc<BookEvent, BooksPageState> {
  final BookService _bookService = BookService();

  BookBloc(BooksPageState initialState) : super(initialState);

  @override
  Stream<BooksPageState> mapEventToState(event) async* {
    if (event is FetchBooks) {
      yield* _mapFetchBooksToState();
    }
  }

  Stream<BooksPageState> _mapFetchBooksToState() async* {
    yield BooksLoading();
    final List<Book> books = await _bookService.getAllBooks();
    yield BooksLoaded(books: books);
  }
}
