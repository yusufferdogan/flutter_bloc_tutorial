import 'package:equatable/equatable.dart';

abstract class BookEvent extends Equatable {}

class FetchBooks extends BookEvent {
  @override
  List<Object> get props => [];
}
