import 'package:bloc_deneme/blocs/page_bloc/page_event.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class PageState extends Equatable {}

class PagesChanging extends PageState {
  final int currentPage;

  PagesChanging({@required this.currentPage});

  @override
  List<Object> get props => [currentPage];
}
