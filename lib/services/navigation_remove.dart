import 'package:flutter/material.dart';

class NavigateAndRemoveState {
  NavigateAndRemoveState({
    required this.routeName,
    required this.predicate,
    this.args,
  });
  final String routeName;
  final RoutePredicate predicate;
  final Object? args;
}
