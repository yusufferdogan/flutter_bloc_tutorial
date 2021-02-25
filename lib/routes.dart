import 'package:bloc_deneme/pages/main_page.dart';
import 'package:flutter/material.dart';
import './pages/first_page.dart';
import './pages/second_page.dart';

const ROOT_URL = '/';
const FIRST_PAGE_URL = '/first';
const SECOND_PAGE_URL = '/second';

class Routes {
  static final routes = <String, WidgetBuilder>{
    ROOT_URL: (context) => MainPage(),
    FIRST_PAGE_URL: (context) => FirstPage(),
    SECOND_PAGE_URL: (context) => SecondPage(),
  };
  static final bodyTitle = ["FirstPage", "SecondPage"];
  static final bodyList = <Widget>[
    FirstPage(),
    SecondPage(),
  ];
}
