import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../domain/usecases/request_permission_usecases.dart';

part 'permission_state.dart';

class PermissionCubit extends Cubit<PermissionState> {
  final RequestPermissionUsecases permissionUsecases;

  PermissionCubit({required this.permissionUsecases})
      : super(PermissionInitial());

  // Check and request notification permission
  Future<void> requestNotificationPermission() async {
    final isGranted = await permissionUsecases.requestNotificationPermission();
    if (isGranted) {
      emit(PermissionGranted());
    } else {
      emit(PermissionDenied(message: "Notification permission is required."));
    }
  }

  // Check and request camera permission
  Future<bool> requestCameraPermission() async {
    final isGranted = await permissionUsecases.requestCameraPermission();
    if (isGranted) {
      emit(PermissionGranted());
    } else {
      emit(PermissionDenied(message: "Camera permission is required."));
    }
    return isGranted;
  }

  // Take All Permission in One Time
  Future<void> allPermissions() async {
    final isGranted = await permissionUsecases.requestAllPermission();
    if (isGranted) {
      emit(PermissionGranted());
    }
  }

  // General method to check and request a specific permission
  Future<void> checkAndRequestPermission(Permission permission) async {
    final isGranted =
        await permissionUsecases.checkPermissionAndRequest(permission);
    if (isGranted) {
      emit(PermissionGranted());
    } else {
      emit(PermissionDenied(message: "Permission is required to proceed."));
    }
  }
}
