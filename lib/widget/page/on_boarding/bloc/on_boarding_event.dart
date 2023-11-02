import 'package:flutter/material.dart';

@immutable
abstract class OnBoardingEvent {}

class ChangePageEvent extends OnBoardingEvent {
  ChangePageEvent({
    required this.index,
  });
  final int index;
}

class StartLoginEvent extends OnBoardingEvent {}
