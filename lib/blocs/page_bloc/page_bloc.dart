import 'package:bloc_deneme/blocs/page_bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  PageBloc(PageState initialState) : super(PagesChanging(currentPage: 0));

  @override
  Stream<PageState> mapEventToState(PageEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
