// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildrenDeviceResponseDTOImpl _$$ChildrenDeviceResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildrenDeviceResponseDTOImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DeviceDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$ChildrenDeviceResponseDTOImplToJson(
        _$ChildrenDeviceResponseDTOImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'success': instance.success,
    };

_$DeviceDataDTOImpl _$$DeviceDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$DeviceDataDTOImpl(
      id: json['_id'] as String?,
      phoneLock: json['phoneLock'] as bool?,
      deviceName: json['deviceName'] as String?,
    );

Map<String, dynamic> _$$DeviceDataDTOImplToJson(_$DeviceDataDTOImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'phoneLock': instance.phoneLock,
      'deviceName': instance.deviceName,
    };
