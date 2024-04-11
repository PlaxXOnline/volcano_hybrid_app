import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'permission_event.dart';
part 'permission_state.dart';

class PermissionBloc extends Bloc<_PermissionEvent, PermissionState> {
  PermissionBloc() : super(PermissionState()) {
    on<RequestPermissionEvent>((event, emit) async {
      Map<Permission, PermissionStatus> requestedPermission =
          await [event.permission].request();
      emit(state.copy().addOrChangePermissionStatus(event.permission,
          requestedPermission[event.permission] ?? PermissionStatus.denied));
    });

    on<CheckPermissionEvent>((event, emit) async {
      emit(state.copy().addOrChangePermissionStatus(
          event.permission, await event.permission.status));
    });
  }
}
