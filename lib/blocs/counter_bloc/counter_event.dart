import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class CounterEvent extends Equatable {}

class IncrementEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}

class DecrementEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}
