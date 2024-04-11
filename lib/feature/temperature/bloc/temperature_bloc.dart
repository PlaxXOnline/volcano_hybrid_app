import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'temperature_event.dart';
part 'temperature_state.dart';

class TemperatureBloc extends Bloc<TemperatureEvent, TemperatureState> {
  TemperatureBloc() : super(TemperatureInitial()) {
    on<TemperatureEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
