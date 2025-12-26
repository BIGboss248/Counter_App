import 'package:bloc/bloc.dart';
import 'package:counter_app/app.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/counter_observer.dart';
import 'package:counter_app/utils/logger.dart';

void main() async {
  Bloc.observer = const CounterObserver();
  await initializeLogger();
  runApp(const CounterApp());
}
