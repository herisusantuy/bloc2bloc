import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int incrementSize = 1;

  CounterBloc() : super(CounterState.initial()) {
    on<ChangeCounterEvent>((event, emit) {
      debugPrint('state is here:${state.counter.toString()}');
      debugPrint('even is here:${event.incrementSize.toString()}');
      emit(state.copyWith(counter: state.counter + event.incrementSize));
    });
  }
}
