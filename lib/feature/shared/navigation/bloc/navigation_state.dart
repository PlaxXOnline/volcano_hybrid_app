part of 'navigation_bloc.dart';

abstract class NavigationState extends Equatable {
  final int tabIndex;
  const NavigationState({required this.tabIndex});
}

class NavigationInitial extends NavigationState {
  const NavigationInitial({required super.tabIndex});
  @override
  List<Object> get props => [tabIndex];
}
