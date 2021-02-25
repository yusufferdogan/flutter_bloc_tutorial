import 'package:bloc_deneme/blocs/page_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc(PageState initialState) : super(initialState);

  @override
  Stream<PageState> mapEventToState(PageEvent event) async* {
    if (event is PageChanged) {
      Navigator.of(event.context).pushNamed(event.routeName);
      yield PageState(currentPage: event.pageNum);
    }
  }
}
