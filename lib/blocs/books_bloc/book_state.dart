import 'package:bloc_deneme/models/book.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class BooksPageState extends Equatable {}

class BooksInitState extends BooksPageState {
  @override
  List<Object> get props => [];
}

class BooksLoading extends BooksPageState {
  @override
  List<Object> get props => [];
}

class BooksLoaded extends BooksPageState {
  final List<Book> books;

  List<Book> get getBooks => books;

  BooksLoaded({@required this.books});

  @override
  List<Object> get props => [books];
}
