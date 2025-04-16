// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MessageResponseDTO _$MessageResponseDTOFromJson(Map<String, dynamic> json) {
  return _MessageResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$MessageResponseDTO {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this MessageResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageResponseDTOCopyWith<MessageResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageResponseDTOCopyWith<$Res> {
  factory $MessageResponseDTOCopyWith(
          MessageResponseDTO value, $Res Function(MessageResponseDTO) then) =
      _$MessageResponseDTOCopyWithImpl<$Res, MessageResponseDTO>;
  @useResult
  $Res call({int? statusCode, String? message, dynamic data, bool? success});
}

/// @nodoc
class _$MessageResponseDTOCopyWithImpl<$Res, $Val extends MessageResponseDTO>
    implements $MessageResponseDTOCopyWith<$Res> {
  _$MessageResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? success = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageResponseDTOImplCopyWith<$Res>
    implements $MessageResponseDTOCopyWith<$Res> {
  factory _$$MessageResponseDTOImplCopyWith(_$MessageResponseDTOImpl value,
          $Res Function(_$MessageResponseDTOImpl) then) =
      __$$MessageResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, String? message, dynamic data, bool? success});
}

/// @nodoc
class __$$MessageResponseDTOImplCopyWithImpl<$Res>
    extends _$MessageResponseDTOCopyWithImpl<$Res, _$MessageResponseDTOImpl>
    implements _$$MessageResponseDTOImplCopyWith<$Res> {
  __$$MessageResponseDTOImplCopyWithImpl(_$MessageResponseDTOImpl _value,
      $Res Function(_$MessageResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? success = freezed,
  }) {
    return _then(_$MessageResponseDTOImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageResponseDTOImpl implements _MessageResponseDTO {
  _$MessageResponseDTOImpl(
      {this.statusCode, this.message, this.data, this.success});

  factory _$MessageResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageResponseDTOImplFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final dynamic data;
  @override
  final bool? success;

  @override
  String toString() {
    return 'MessageResponseDTO(statusCode: $statusCode, message: $message, data: $data, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageResponseDTOImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(data), success);

  /// Create a copy of MessageResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageResponseDTOImplCopyWith<_$MessageResponseDTOImpl> get copyWith =>
      __$$MessageResponseDTOImplCopyWithImpl<_$MessageResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _MessageResponseDTO implements MessageResponseDTO {
  factory _MessageResponseDTO(
      {final int? statusCode,
      final String? message,
      final dynamic data,
      final bool? success}) = _$MessageResponseDTOImpl;

  factory _MessageResponseDTO.fromJson(Map<String, dynamic> json) =
      _$MessageResponseDTOImpl.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  dynamic get data;
  @override
  bool? get success;

  /// Create a copy of MessageResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageResponseDTOImplCopyWith<_$MessageResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
