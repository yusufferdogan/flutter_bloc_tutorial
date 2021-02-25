import 'package:flutter/material.dart';

class PageState {
  final String pageName;

  PageState({@required this.pageName});

  @override
  String toString() {
    return '''PageState {
      pageIndex: $pageName
    }''';
  }
}
