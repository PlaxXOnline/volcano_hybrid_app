part of 'permission_bloc.dart';

class PermissionState extends Equatable {
  Map<Permission, PermissionStatus> permissionStates = {};

  PermissionState({Map<Permission, PermissionStatus>? permissionStates})
      : permissionStates = permissionStates ?? <Permission, PermissionStatus>{};

  @override
  List<Object?> get props => [permissionStates];

  PermissionState copy() {
    return PermissionState(permissionStates: {...permissionStates});
  }

  PermissionState addOrChangePermissionStatus(
      Permission permission, PermissionStatus status) {
    if (permissionStates.containsKey(permission)) {
      permissionStates.update(permission, (_) => status);
    } else {
      permissionStates[permission] = status;
    }
    return this;
  }

  checkPermission(Permission permission) {
    return permissionStates[permission] == PermissionStatus.granted;
  }
}
