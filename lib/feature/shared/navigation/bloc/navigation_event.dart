part of 'navigation_bloc.dart';

abstract class NavigationEvent extends Equatable {}

class TabChange extends NavigationEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});

  @override
  List<Object?> get props => [tabIndex];
}
