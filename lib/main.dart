import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'BlocObserver.dart';
import 'view/screens/counterApp/CounterApp.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const CounterApp());
}
