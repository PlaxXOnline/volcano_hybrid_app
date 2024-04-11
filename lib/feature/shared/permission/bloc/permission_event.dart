part of 'permission_bloc.dart';

abstract class _PermissionEvent extends Equatable {
  final Permission permission;

  const _PermissionEvent({required this.permission});

  @override
  List<Object?> get props => [permission];
}

class RequestPermissionEvent extends _PermissionEvent {
  const RequestPermissionEvent({required super.permission});
}

class CheckPermissionEvent extends _PermissionEvent {
  const CheckPermissionEvent({required super.permission});
}
