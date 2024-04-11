part of 'workflow_bloc.dart';

abstract class WorkflowState extends Equatable {
  const WorkflowState();
}

class WorkflowInitial extends WorkflowState {
  @override
  List<Object> get props => [];
}
