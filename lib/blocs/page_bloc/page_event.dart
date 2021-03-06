import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class PageEvent extends Equatable {}

class PageChanged extends PageEvent {
  final BuildContext context;
  final String routeName;
  final String pageName;

  PageChanged(
      {@required this.pageName,
      @required this.context,
      @required this.routeName});

  @override
  String toString() => 'PageChanged {routeName: $routeName}';

  @override
  List<Object> get props => [context, routeName, pageName];
}
