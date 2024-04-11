part of 'volcano_bloc.dart';

abstract class VolcanoState extends Equatable {
  const VolcanoState();
}

class VolcanoInitial extends VolcanoState {
  @override
  List<Object> get props => [];
}
