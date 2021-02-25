import 'package:bloc_deneme/blocs/counter_bloc/counter_bloc.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_event.dart';
import 'package:bloc_deneme/blocs/counter_bloc/counter_state.dart';
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
    return BlocConsumer<CounterBloc, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('asdasdd'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(50),
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
                  label: Text('increment'),
                ),
              ),
              Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.black,
                  width: 5,
                )),
                child: FlatButton.icon(
                  key: ValueKey('4'),
                  onPressed: () => _decrement(),
                  icon: Icon(
                    Icons.add,
                  ),
                  label: Text('decrement'),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 5,
                  )),
                  child: Text(
                    '${state.counter}',
                    style: TextStyle(fontSize: 45),
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
