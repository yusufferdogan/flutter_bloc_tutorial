import 'package:flutter/material.dart';

class PageState {
  final int currentPage;

  PageState({@required this.currentPage});

  @override
  String toString() {
    return '''PageState {
      pageIndex: $currentPage
    }''';
  }
}
