import 'package:freezed_annotation/freezed_annotation.dart';

part 'children_device_response.g.dart';
part 'children_device_response.freezed.dart';

@freezed
class ChildrenDeviceResponseDTO with _$ChildrenDeviceResponseDTO {
  factory ChildrenDeviceResponseDTO({
    int? statusCode,
    String? message,
    List<DeviceDataDTO>? data,
    bool? success,
  }) = _ChildrenDeviceResponseDTO;

  factory ChildrenDeviceResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ChildrenDeviceResponseDTOFromJson(json);
}

@freezed
class DeviceDataDTO with _$DeviceDataDTO {
  factory DeviceDataDTO({
    @JsonKey(name: "_id") String? id,
    bool? phoneLock,
    String? deviceName,
  }) = _DeviceDataDTO;

  factory DeviceDataDTO.fromJson(Map<String, dynamic> json) =>
      _$DeviceDataDTOFromJson(json);
}
