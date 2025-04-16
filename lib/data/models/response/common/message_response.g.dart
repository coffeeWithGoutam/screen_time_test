// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageResponseDTOImpl _$$MessageResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageResponseDTOImpl(
      statusCode: (json['statusCode'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'],
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$$MessageResponseDTOImplToJson(
        _$MessageResponseDTOImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'success': instance.success,
    };
