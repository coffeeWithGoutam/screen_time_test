// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChildProfileResponseDTO _$ChildProfileResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _ChildProfileResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ChildProfileResponseDTO {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ProfileDataDTO? get data => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this ChildProfileResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildProfileResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildProfileResponseDTOCopyWith<ChildProfileResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildProfileResponseDTOCopyWith<$Res> {
  factory $ChildProfileResponseDTOCopyWith(ChildProfileResponseDTO value,
          $Res Function(ChildProfileResponseDTO) then) =
      _$ChildProfileResponseDTOCopyWithImpl<$Res, ChildProfileResponseDTO>;
  @useResult
  $Res call(
      {int? statusCode, String? message, ProfileDataDTO? data, bool? success});

  $ProfileDataDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$ChildProfileResponseDTOCopyWithImpl<$Res,
        $Val extends ChildProfileResponseDTO>
    implements $ChildProfileResponseDTOCopyWith<$Res> {
  _$ChildProfileResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildProfileResponseDTO
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
              as ProfileDataDTO?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of ChildProfileResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileDataDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProfileDataDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChildProfileResponseDTOImplCopyWith<$Res>
    implements $ChildProfileResponseDTOCopyWith<$Res> {
  factory _$$ChildProfileResponseDTOImplCopyWith(
          _$ChildProfileResponseDTOImpl value,
          $Res Function(_$ChildProfileResponseDTOImpl) then) =
      __$$ChildProfileResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? statusCode, String? message, ProfileDataDTO? data, bool? success});

  @override
  $ProfileDataDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ChildProfileResponseDTOImplCopyWithImpl<$Res>
    extends _$ChildProfileResponseDTOCopyWithImpl<$Res,
        _$ChildProfileResponseDTOImpl>
    implements _$$ChildProfileResponseDTOImplCopyWith<$Res> {
  __$$ChildProfileResponseDTOImplCopyWithImpl(
      _$ChildProfileResponseDTOImpl _value,
      $Res Function(_$ChildProfileResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildProfileResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? success = freezed,
  }) {
    return _then(_$ChildProfileResponseDTOImpl(
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
              as ProfileDataDTO?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChildProfileResponseDTOImpl implements _ChildProfileResponseDTO {
  _$ChildProfileResponseDTOImpl(
      {this.statusCode, this.message, this.data, this.success});

  factory _$ChildProfileResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildProfileResponseDTOImplFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final ProfileDataDTO? data;
  @override
  final bool? success;

  @override
  String toString() {
    return 'ChildProfileResponseDTO(statusCode: $statusCode, message: $message, data: $data, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildProfileResponseDTOImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, statusCode, message, data, success);

  /// Create a copy of ChildProfileResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildProfileResponseDTOImplCopyWith<_$ChildProfileResponseDTOImpl>
      get copyWith => __$$ChildProfileResponseDTOImplCopyWithImpl<
          _$ChildProfileResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildProfileResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ChildProfileResponseDTO implements ChildProfileResponseDTO {
  factory _ChildProfileResponseDTO(
      {final int? statusCode,
      final String? message,
      final ProfileDataDTO? data,
      final bool? success}) = _$ChildProfileResponseDTOImpl;

  factory _ChildProfileResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ChildProfileResponseDTOImpl.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  ProfileDataDTO? get data;
  @override
  bool? get success;

  /// Create a copy of ChildProfileResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildProfileResponseDTOImplCopyWith<_$ChildProfileResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProfileDataDTO _$ProfileDataDTOFromJson(Map<String, dynamic> json) {
  return _ProfileDataDTO.fromJson(json);
}

/// @nodoc
mixin _$ProfileDataDTO {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;

  /// Serializes this ProfileDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileDataDTOCopyWith<ProfileDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDataDTOCopyWith<$Res> {
  factory $ProfileDataDTOCopyWith(
          ProfileDataDTO value, $Res Function(ProfileDataDTO) then) =
      _$ProfileDataDTOCopyWithImpl<$Res, ProfileDataDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? avatar,
      String? fullName,
      bool? isOnline});
}

/// @nodoc
class _$ProfileDataDTOCopyWithImpl<$Res, $Val extends ProfileDataDTO>
    implements $ProfileDataDTOCopyWith<$Res> {
  _$ProfileDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? fullName = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileDataDTOImplCopyWith<$Res>
    implements $ProfileDataDTOCopyWith<$Res> {
  factory _$$ProfileDataDTOImplCopyWith(_$ProfileDataDTOImpl value,
          $Res Function(_$ProfileDataDTOImpl) then) =
      __$$ProfileDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String? avatar,
      String? fullName,
      bool? isOnline});
}

/// @nodoc
class __$$ProfileDataDTOImplCopyWithImpl<$Res>
    extends _$ProfileDataDTOCopyWithImpl<$Res, _$ProfileDataDTOImpl>
    implements _$$ProfileDataDTOImplCopyWith<$Res> {
  __$$ProfileDataDTOImplCopyWithImpl(
      _$ProfileDataDTOImpl _value, $Res Function(_$ProfileDataDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? avatar = freezed,
    Object? fullName = freezed,
    Object? isOnline = freezed,
  }) {
    return _then(_$ProfileDataDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDataDTOImpl implements _ProfileDataDTO {
  _$ProfileDataDTOImpl(
      {@JsonKey(name: "_id") this.id,
      this.avatar,
      this.fullName,
      this.isOnline});

  factory _$ProfileDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDataDTOImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? avatar;
  @override
  final String? fullName;
  @override
  final bool? isOnline;

  @override
  String toString() {
    return 'ProfileDataDTO(id: $id, avatar: $avatar, fullName: $fullName, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDataDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, avatar, fullName, isOnline);

  /// Create a copy of ProfileDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDataDTOImplCopyWith<_$ProfileDataDTOImpl> get copyWith =>
      __$$ProfileDataDTOImplCopyWithImpl<_$ProfileDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDataDTOImplToJson(
      this,
    );
  }
}

abstract class _ProfileDataDTO implements ProfileDataDTO {
  factory _ProfileDataDTO(
      {@JsonKey(name: "_id") final String? id,
      final String? avatar,
      final String? fullName,
      final bool? isOnline}) = _$ProfileDataDTOImpl;

  factory _ProfileDataDTO.fromJson(Map<String, dynamic> json) =
      _$ProfileDataDTOImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get avatar;
  @override
  String? get fullName;
  @override
  bool? get isOnline;

  /// Create a copy of ProfileDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileDataDTOImplCopyWith<_$ProfileDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
