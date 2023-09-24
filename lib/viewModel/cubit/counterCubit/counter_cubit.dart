import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int number = 1;

  addCounter() {
    number++;
    emit(CounterAddUpdate());
  }

  minusCounter() {
    number--;
    emit(CounterMinusUpdate());
  }

  static CounterCubit get(context) => BlocProvider.of(context);
}
