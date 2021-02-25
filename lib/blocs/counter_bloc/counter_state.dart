import 'package:flutter/material.dart';

class CounterState {
  int counter;
  CounterState({@required this.counter});

//  CounterState._(); // TODO: PRIVATE CONSTRUCTOR
//
//  factory CounterState.initial() => CounterState._()..counter = 0;
//
//  factory CounterState.increment() => CounterState._()..counter += 1;
//
//  factory CounterState.decrement() => CounterState._()..counter -= 1;

  get getter => counter;

  get currentPage => null;
}

//class InitialState extends CounterState {
//  InitialState() : super(counter: 0);
//  @override
//  List<Object> get props => [];
//}
//
//class IncrementState extends CounterState {
//  IncrementState() : super(counter: );
//
//  @override
//  List<Object> get props => [];
//}
//
//class DecrementState extends CounterState {
//  @override
//  List<Object> get props => [];
//}
