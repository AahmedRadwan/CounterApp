part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAddUpdate extends CounterState {}

class CounterMinusUpdate extends CounterState {}
