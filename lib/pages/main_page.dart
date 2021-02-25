import 'package:bloc_deneme/blocs/page_bloc/bloc.dart';
import 'package:bloc_deneme/blocs/page_bloc/page_bloc.dart';
import 'package:bloc_deneme/blocs/page_bloc/page_state.dart';
import 'package:bloc_deneme/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  void _goToFirstPage() {
    BlocProvider.of<PageBloc>(context).add(
      PageChanged(
          context: context, routeName: FIRST_PAGE_URL, pageName: 'first page'),
    );
  }

  void _goToSecondPage() {
    BlocProvider.of<PageBloc>(context).add(
      PageChanged(
          context: context,
          routeName: SECOND_PAGE_URL,
          pageName: 'second page'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PageBloc, PageState>(
      builder: (context, state) {
        print('number:::::::::::::${state.pageName}');
        return Scaffold(
          appBar: AppBar(
            title: Text(state.pageName),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )),
                  child: FlatButton(
                    onPressed: _goToFirstPage,
                    child: Text(
                      'Go To First Page',
                    ),
                  ),
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )),
                  child: FlatButton(
                    onPressed: _goToSecondPage,
                    child: Text(
                      'Go To Second Page',
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      listener: (context, state) {
        print('MainPage::::::${state.pageName}');
      },
    );
  }
}
