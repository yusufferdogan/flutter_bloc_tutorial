import 'dart:convert';
import 'package:bloc_deneme/models/book.dart';
import 'package:http/http.dart' as http;

class BookService {
  static final BookService _bookService = BookService._internal();
  BookService._internal();

  factory BookService() {
    return _bookService;
  }
  Future<List<Book>> getBooks(String endpoint) async {
    var url =
        'https://bookworm-database-default-rtdb.firebaseio.com/Part$endpoint.json';
    final List<Book> loadedBooks = List<Book>();
    try {
      final response = await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      extractedData.forEach(
        (bookId, bookData) {
          final book = Book.fromJson(bookId, bookData);
          loadedBooks.add(
            book,
          );
        },
      );
    } catch (error) {
      print(error);
    }
    return loadedBooks;
  }

  Future<List<Book>> getAllBooks() async {
    final List<Book> books3 = await getBooks('3');
    final List<Book> books4 = await getBooks('4');
    final List<Book> books5 = await getBooks('5');
    final List<Book> books6 = await getBooks('6');
    final List<Book> books7 = await getBooks('7');
    final List<Book> books8 = await getBooks('8');
    final List<Book> books9 = await getBooks('9');
    final List<Book> books10 = await getBooks('10');

    final List<Book> books =
        books3 + books4 + books5 + books6 + books7 + books8 + books9 + books10;
    return books;
  }
}
