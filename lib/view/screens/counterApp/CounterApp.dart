import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../viewModel/cubit/counterCubit/counter_cubit.dart';
import '../CounterScreen/CounterScreen.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterCubit>(
        create: (context) => CounterCubit(),
        child: const CounterScreen(),
      ),
    );
  }
}
