import 'package:bloc_deneme/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_event.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocConsumer<CounterBloc, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('asdasdd'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(50),
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
                  label: Text('increment'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(50),
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
                    Icons.add,
                  ),
                  label: Text('decrement'),
                ),
              ),
              Center(
                child: Container(
                  child: Text(
                    '${state.counter}',
                    style: TextStyle(fontSize: 45),
                  ),
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 5,
                    ),
                  ),
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
