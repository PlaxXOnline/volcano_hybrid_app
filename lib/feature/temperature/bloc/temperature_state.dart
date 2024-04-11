part of 'temperature_bloc.dart';

abstract class TemperatureState extends Equatable {
  const TemperatureState();
}

class TemperatureInitial extends TemperatureState {
  @override
  List<Object> get props => [];
}
