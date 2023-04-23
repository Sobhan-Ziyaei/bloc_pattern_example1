import 'package:bloc_pattern_example1/bloc/counter_bloc/counter_event.dart';
import 'package:bloc_pattern_example1/bloc/counter_bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitPrimaryState(100)) {}
}
