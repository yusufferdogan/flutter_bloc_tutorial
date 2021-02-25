import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

enum CounterType { increment, decrement }

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(CounterState initialState) : super(initialState);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield* _mapIncrementToState();
    }
    if (event is DecrementEvent) {
      yield* _mapDecrementToState();
    }
  }

  Stream<CounterState> _mapIncrementToState() async* {
    int num = state.getter;
    yield CounterState(counter: num + 1);
  }

  Stream<CounterState> _mapDecrementToState() async* {
    int num = state.getter;
    yield CounterState(counter: num - 1);
//    yield CounterState.decrement(); // TODO: çalışmıyor
//    yield state..counter -= 1; // TODO : ÇALIŞMIYOR
  }
}
