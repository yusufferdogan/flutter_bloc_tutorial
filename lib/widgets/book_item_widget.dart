import 'package:bloc_deneme/models/book.dart';
import 'package:bloc_deneme/pages/books/single_book_screen.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  final Book book;

  const BookItem({Key key, this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => SingleBookScreen(book: book)));
      },
      leading: CircleAvatar(
        child: Text(
          book.title[0].toUpperCase(),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.teal,
      ),
      title: Text(
        book.title.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        book.writer.toUpperCase(),
      ),
    );
  }
}
