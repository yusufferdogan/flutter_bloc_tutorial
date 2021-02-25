import 'package:bloc_deneme/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_event.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_state.dart';
import 'package:bloc_deneme/blocs/page_bloc/page_bloc.dart';
import 'package:bloc_deneme/blocs/page_bloc/page_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  void initState() {
    super.initState();
  }

  void _increment() {
    BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
  }

  void _decrement() {
    BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PageBloc, PageState>(
        listener: (context, pageState) {},
        builder: (context, pageState) {
          return BlocConsumer<CounterBloc, CounterState>(
            builder: (BuildContext context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(pageState.pageName),
                ),
                body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                      child: FlatButton.icon(
                        key: ValueKey('1'),
                        onPressed: () => _increment(),
                        icon: Icon(
                          Icons.add,
                        ),
                        label: Text(
                          'increment',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 5,
                        ),
                      ),
                      child: FlatButton.icon(
                        key: ValueKey('2'),
                        onPressed: () => _decrement(),
                        icon: Icon(
                          Icons.remove,
                        ),
                        label: Text(
                          'decrement',
                          style: TextStyle(fontSize: 40),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 300,
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.black,
                          width: 5,
                        )),
                        child: Center(
                          child: Text(
                            '${state.counter}',
                            style: TextStyle(fontSize: 40),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            listener: (context, state) {
              print('SecondPage::::::${state.currentPage}');
            },
          );
        });
  }
}
