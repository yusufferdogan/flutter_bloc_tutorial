import 'package:bloc_deneme/pages/books/books_page.dart';
import 'package:bloc_deneme/pages/main_page.dart';
import 'package:flutter/material.dart';
import './pages/first_page.dart';
import './pages/second_page.dart';

const ROOT_URL = '/';
const FIRST_PAGE_URL = '/first';
const SECOND_PAGE_URL = '/second';
const BOOKS_PAGE_URL = '/books';

class Routes {
  static final routes = <String, WidgetBuilder>{
    ROOT_URL: (context) => MainPage(),
    FIRST_PAGE_URL: (context) => FirstPage(),
    SECOND_PAGE_URL: (context) => SecondPage(),
    BOOKS_PAGE_URL:  (context) => BooksPage(),
  };
  static final bodyTitle = ["MainPage", "FirstPage", "SecondPage"];
  static final bodyList = <Widget>[
    FirstPage(),
    SecondPage(),

  ];
}
