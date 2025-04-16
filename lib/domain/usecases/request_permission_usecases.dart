import 'package:permission_handler/permission_handler.dart';

import '../../data/services/permission_service.dart';

class RequestPermissionUsecases {
  final PermissionService _permissionService;

  RequestPermissionUsecases(this._permissionService);

  Future<bool> requestNotificationPermission() async {
    return await _permissionService.requestNotificationPermission();
  }

  Future<bool> requestCameraPermission() async {
    return await _permissionService.requestCameraPermission();
  }

  Future<bool> requestAllPermission() async {
    return _permissionService.requestAllPermissions();
  }

  Future<bool> checkPermissionAndRequest(Permission permission) async {
    // Check if permission is already granted
    final isGranted = await _permissionService.isPermissionGranted(permission);
    if (isGranted) return true;

    // Request permission if not granted
    return await permission.request().isGranted;
  }
}
