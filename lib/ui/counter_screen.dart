import 'package:bloc_pattern_example1/bloc/counter_bloc/counter_bloc.dart';
import 'package:bloc_pattern_example1/bloc/counter_bloc/counter_event.dart';
import 'package:bloc_pattern_example1/bloc/counter_bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatefulWidget {
  CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is CounterInitPrimaryState) {
                  return Text(
                    '${state.counter}',
                    style: TextStyle(fontSize: 60),
                  );
                }
                if (state is CounterUpdated) {
                  return Text(
                    '${state.counter}',
                    style: TextStyle(fontSize: 60),
                  );
                }
                return Text('error');
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterBloc>().add(CounterDecrementPressedEvent());
              },
              child: Text(
                '-',
                style: TextStyle(fontSize: 24),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                '+',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
