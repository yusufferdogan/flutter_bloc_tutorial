import 'package:bloc_deneme/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_event.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_state.dart';
import 'package:bloc_deneme/blocs/page_bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
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
      builder: (context, pageState) {
        return BlocConsumer<CounterBloc, CounterState>(
          builder: (BuildContext context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(pageState.pageName),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 5,
                    )),
                    child: FlatButton.icon(
                      key: ValueKey('3'),
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
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 5,
                    )),
                    child: FlatButton.icon(
                      key: ValueKey('4'),
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
            print('FirstPage::::::${state.currentPage}');
          },
        );
      },
      listener: (context, state) {},
    );
  }
}
