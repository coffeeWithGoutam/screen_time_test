// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'children_device_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChildrenDeviceResponseDTO _$ChildrenDeviceResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _ChildrenDeviceResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ChildrenDeviceResponseDTO {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<DeviceDataDTO>? get data => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this ChildrenDeviceResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildrenDeviceResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildrenDeviceResponseDTOCopyWith<ChildrenDeviceResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenDeviceResponseDTOCopyWith<$Res> {
  factory $ChildrenDeviceResponseDTOCopyWith(ChildrenDeviceResponseDTO value,
          $Res Function(ChildrenDeviceResponseDTO) then) =
      _$ChildrenDeviceResponseDTOCopyWithImpl<$Res, ChildrenDeviceResponseDTO>;
  @useResult
  $Res call(
      {int? statusCode,
      String? message,
      List<DeviceDataDTO>? data,
      bool? success});
}

/// @nodoc
class _$ChildrenDeviceResponseDTOCopyWithImpl<$Res,
        $Val extends ChildrenDeviceResponseDTO>
    implements $ChildrenDeviceResponseDTOCopyWith<$Res> {
  _$ChildrenDeviceResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildrenDeviceResponseDTO
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
              as List<DeviceDataDTO>?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildrenDeviceResponseDTOImplCopyWith<$Res>
    implements $ChildrenDeviceResponseDTOCopyWith<$Res> {
  factory _$$ChildrenDeviceResponseDTOImplCopyWith(
          _$ChildrenDeviceResponseDTOImpl value,
          $Res Function(_$ChildrenDeviceResponseDTOImpl) then) =
      __$$ChildrenDeviceResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? statusCode,
      String? message,
      List<DeviceDataDTO>? data,
      bool? success});
}

/// @nodoc
class __$$ChildrenDeviceResponseDTOImplCopyWithImpl<$Res>
    extends _$ChildrenDeviceResponseDTOCopyWithImpl<$Res,
        _$ChildrenDeviceResponseDTOImpl>
    implements _$$ChildrenDeviceResponseDTOImplCopyWith<$Res> {
  __$$ChildrenDeviceResponseDTOImplCopyWithImpl(
      _$ChildrenDeviceResponseDTOImpl _value,
      $Res Function(_$ChildrenDeviceResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenDeviceResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? success = freezed,
  }) {
    return _then(_$ChildrenDeviceResponseDTOImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DeviceDataDTO>?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildrenDeviceResponseDTOImpl implements _ChildrenDeviceResponseDTO {
  _$ChildrenDeviceResponseDTOImpl(
      {this.statusCode,
      this.message,
      final List<DeviceDataDTO>? data,
      this.success})
      : _data = data;

  factory _$ChildrenDeviceResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildrenDeviceResponseDTOImplFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  final List<DeviceDataDTO>? _data;
  @override
  List<DeviceDataDTO>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? success;

  @override
  String toString() {
    return 'ChildrenDeviceResponseDTO(statusCode: $statusCode, message: $message, data: $data, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenDeviceResponseDTOImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_data), success);

  /// Create a copy of ChildrenDeviceResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenDeviceResponseDTOImplCopyWith<_$ChildrenDeviceResponseDTOImpl>
      get copyWith => __$$ChildrenDeviceResponseDTOImplCopyWithImpl<
          _$ChildrenDeviceResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildrenDeviceResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ChildrenDeviceResponseDTO implements ChildrenDeviceResponseDTO {
  factory _ChildrenDeviceResponseDTO(
      {final int? statusCode,
      final String? message,
      final List<DeviceDataDTO>? data,
      final bool? success}) = _$ChildrenDeviceResponseDTOImpl;

  factory _ChildrenDeviceResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ChildrenDeviceResponseDTOImpl.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  List<DeviceDataDTO>? get data;
  @override
  bool? get success;

  /// Create a copy of ChildrenDeviceResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildrenDeviceResponseDTOImplCopyWith<_$ChildrenDeviceResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DeviceDataDTO _$DeviceDataDTOFromJson(Map<String, dynamic> json) {
  return _DeviceDataDTO.fromJson(json);
}

/// @nodoc
mixin _$DeviceDataDTO {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  bool? get phoneLock => throw _privateConstructorUsedError;
  String? get deviceName => throw _privateConstructorUsedError;

  /// Serializes this DeviceDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeviceDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeviceDataDTOCopyWith<DeviceDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceDataDTOCopyWith<$Res> {
  factory $DeviceDataDTOCopyWith(
          DeviceDataDTO value, $Res Function(DeviceDataDTO) then) =
      _$DeviceDataDTOCopyWithImpl<$Res, DeviceDataDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id, bool? phoneLock, String? deviceName});
}

/// @nodoc
class _$DeviceDataDTOCopyWithImpl<$Res, $Val extends DeviceDataDTO>
    implements $DeviceDataDTOCopyWith<$Res> {
  _$DeviceDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeviceDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? phoneLock = freezed,
    Object? deviceName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneLock: freezed == phoneLock
          ? _value.phoneLock
          : phoneLock // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceDataDTOImplCopyWith<$Res>
    implements $DeviceDataDTOCopyWith<$Res> {
  factory _$$DeviceDataDTOImplCopyWith(
          _$DeviceDataDTOImpl value, $Res Function(_$DeviceDataDTOImpl) then) =
      __$$DeviceDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id, bool? phoneLock, String? deviceName});
}

/// @nodoc
class __$$DeviceDataDTOImplCopyWithImpl<$Res>
    extends _$DeviceDataDTOCopyWithImpl<$Res, _$DeviceDataDTOImpl>
    implements _$$DeviceDataDTOImplCopyWith<$Res> {
  __$$DeviceDataDTOImplCopyWithImpl(
      _$DeviceDataDTOImpl _value, $Res Function(_$DeviceDataDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeviceDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? phoneLock = freezed,
    Object? deviceName = freezed,
  }) {
    return _then(_$DeviceDataDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneLock: freezed == phoneLock
          ? _value.phoneLock
          : phoneLock // ignore: cast_nullable_to_non_nullable
              as bool?,
      deviceName: freezed == deviceName
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceDataDTOImpl implements _DeviceDataDTO {
  _$DeviceDataDTOImpl(
      {@JsonKey(name: "_id") this.id, this.phoneLock, this.deviceName});

  factory _$DeviceDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceDataDTOImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final bool? phoneLock;
  @override
  final String? deviceName;

  @override
  String toString() {
    return 'DeviceDataDTO(id: $id, phoneLock: $phoneLock, deviceName: $deviceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceDataDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneLock, phoneLock) ||
                other.phoneLock == phoneLock) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, phoneLock, deviceName);

  /// Create a copy of DeviceDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceDataDTOImplCopyWith<_$DeviceDataDTOImpl> get copyWith =>
      __$$DeviceDataDTOImplCopyWithImpl<_$DeviceDataDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceDataDTOImplToJson(
      this,
    );
  }
}

abstract class _DeviceDataDTO implements DeviceDataDTO {
  factory _DeviceDataDTO(
      {@JsonKey(name: "_id") final String? id,
      final bool? phoneLock,
      final String? deviceName}) = _$DeviceDataDTOImpl;

  factory _DeviceDataDTO.fromJson(Map<String, dynamic> json) =
      _$DeviceDataDTOImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  bool? get phoneLock;
  @override
  String? get deviceName;

  /// Create a copy of DeviceDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeviceDataDTOImplCopyWith<_$DeviceDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
