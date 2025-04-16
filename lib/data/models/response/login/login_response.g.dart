// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseDTOImpl _$$LoginResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginResponseDTOImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataDTO.fromJson(json['data'] as Map<String, dynamic>),
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$LoginResponseDTOImplToJson(
        _$LoginResponseDTOImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'success': instance.success,
    };

_$DataDTOImpl _$$DataDTOImplFromJson(Map<String, dynamic> json) =>
    _$DataDTOImpl(
      userId: json['userId'] as String?,
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      userType: json['userType'] as String?,
    );

Map<String, dynamic> _$$DataDTOImplToJson(_$DataDTOImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userType': instance.userType,
    };
