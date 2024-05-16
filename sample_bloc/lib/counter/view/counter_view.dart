import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/counter/cubit/cubit.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [


            Text(context.watch<CounterCubit>().state.toString()),
            FloatingActionButton(onPressed: context.read<CounterCubit>().increment,
            tooltip: "increment",
            child: Icon(
              Icons.plus_one
            ),
            ),
               FloatingActionButton(onPressed: context.read<CounterCubit>().reset,
            tooltip: "increment",
             child: Icon(
              Icons.reset_tv
            ),
            ),
               FloatingActionButton(onPressed: context.read<CounterCubit>().decrement,
            tooltip: "increment",
             child: Icon(
              Icons.minor_crash_outlined
            ),
            )
          ],
        ),
      ),
    );
  }
}
