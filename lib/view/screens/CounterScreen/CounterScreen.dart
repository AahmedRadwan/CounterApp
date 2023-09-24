import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../viewModel/cubit/counterCubit/counter_cubit.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Counter App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                var cubit = CounterCubit.get(context);
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                        onPressed: () {
                          cubit.addCounter();
                        },
                        color: Colors.indigo,
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                    Text(
                      "${cubit.number}",
                      style: const TextStyle(
                          fontSize: 52, fontWeight: FontWeight.w500),
                    ),
                    MaterialButton(
                      onPressed: () {
                        cubit.minusCounter();
                      },
                      color: Colors.indigo,
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
