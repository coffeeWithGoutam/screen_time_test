import 'package:permission_handler/permission_handler.dart';

class PermissionService {
  // Request permission for notifications
  Future<bool> requestNotificationPermission() async {
    final status = await Permission.notification.request();
    return status.isGranted;
  }

  // Request permission for camera access
  Future<bool> requestCameraPermission() async {
    final status = await Permission.camera.request();
    return status.isGranted;
  }

  // Request permission for location access
  Future<bool> requestLocationPermission() async {
    final status = await Permission.location.request();
    return status.isGranted;
  }

  // Check if a specific permission is granted
  Future<bool> isPermissionGranted(Permission permission) async {
    return await permission.isGranted;
  }

  // Request all necessary permissions at once
  Future<bool> requestAllPermissions() async {
    final permissions =
        await [
          Permission.notification,
          Permission.camera,
          Permission.location,
          Permission.locationAlways,
          Permission.systemAlertWindow,
          Permission.ignoreBatteryOptimizations,
        ].request();
    return permissions.values.every((status) => status.isGranted);
  }
}
