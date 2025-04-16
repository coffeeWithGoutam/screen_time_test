// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'child_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChildProfileResponseDTOImpl _$$ChildProfileResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ChildProfileResponseDTOImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProfileDataDTO.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$ChildProfileResponseDTOImplToJson(
        _$ChildProfileResponseDTOImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'success': instance.success,
    };

_$ProfileDataDTOImpl _$$ProfileDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProfileDataDTOImpl(
      id: json['_id'] as String?,
      avatar: json['avatar'] as String?,
      fullName: json['fullName'] as String?,
      isOnline: json['isOnline'] as bool?,
    );

Map<String, dynamic> _$$ProfileDataDTOImplToJson(
        _$ProfileDataDTOImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'avatar': instance.avatar,
      'fullName': instance.fullName,
      'isOnline': instance.isOnline,
    };
