import 'package:bloc_deneme/blocs/counter_bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(CounterState(counter: 0)),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity),
        home: Page(),
      ),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  void initState() {
    //BlocProvider.of<CounterBloc>(context).add(InitialEvent());
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
    return BlocConsumer<CounterBloc, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('asdasdd'),
          ),
          body: Center(
            child: Container(
              child: Text(
                '${state.counter}',
                style: TextStyle(fontSize: 45),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => _increment(),
                child: Icon(
                  Icons.add,
                ),
              ),
              FloatingActionButton(
                onPressed: () => _decrement(),
                child: Icon(
                  Icons.remove,
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
