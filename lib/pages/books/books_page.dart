import 'package:bloc_deneme/widgets/book_item_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_deneme/blocs/books_bloc/bloc.dart';

class BooksPage extends StatefulWidget {
  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  void initState() {
    BlocProvider.of<BookBloc>(context).add(FetchBooks());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookBloc, BooksPageState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Books Page'),
          ),
          body: _buildBody(state),
        );
      },
      listener: (context, state) {},
    );
  }

  Widget _buildBody(BooksPageState state) {
    if (state is BooksInitState || state is BooksLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      final books = (state as BooksLoaded).books;
      return Container(
        child: ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) {
            return BookItem(
              book: books[index],
            );
          },
        ),
      );
    }
  }
}
