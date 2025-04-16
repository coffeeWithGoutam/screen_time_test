import '../../domain/entities/device_entities.dart';
import '../models/response/children_device/children_device_response.dart';

extension DeviceMapper on DeviceDataDTO {
  DeviceEntities toEntity() {
    return DeviceEntities(
      id: id ?? "",
      phoneLock: phoneLock ?? false,
      deviceName: deviceName ?? "",
    );
  }
}
