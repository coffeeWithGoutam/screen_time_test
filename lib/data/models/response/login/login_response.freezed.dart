// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponseDTO _$LoginResponseDTOFromJson(Map<String, dynamic> json) {
  return _LoginResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDTO {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  DataDTO? get data => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;

  /// Serializes this LoginResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseDTOCopyWith<LoginResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDTOCopyWith<$Res> {
  factory $LoginResponseDTOCopyWith(
          LoginResponseDTO value, $Res Function(LoginResponseDTO) then) =
      _$LoginResponseDTOCopyWithImpl<$Res, LoginResponseDTO>;
  @useResult
  $Res call({int? statusCode, String? message, DataDTO? data, bool? success});

  $DataDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseDTOCopyWithImpl<$Res, $Val extends LoginResponseDTO>
    implements $LoginResponseDTOCopyWith<$Res> {
  _$LoginResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponseDTO
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
              as DataDTO?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseDTOImplCopyWith<$Res>
    implements $LoginResponseDTOCopyWith<$Res> {
  factory _$$LoginResponseDTOImplCopyWith(_$LoginResponseDTOImpl value,
          $Res Function(_$LoginResponseDTOImpl) then) =
      __$$LoginResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, String? message, DataDTO? data, bool? success});

  @override
  $DataDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoginResponseDTOImplCopyWithImpl<$Res>
    extends _$LoginResponseDTOCopyWithImpl<$Res, _$LoginResponseDTOImpl>
    implements _$$LoginResponseDTOImplCopyWith<$Res> {
  __$$LoginResponseDTOImplCopyWithImpl(_$LoginResponseDTOImpl _value,
      $Res Function(_$LoginResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? success = freezed,
  }) {
    return _then(_$LoginResponseDTOImpl(
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
              as DataDTO?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseDTOImpl implements _LoginResponseDTO {
  _$LoginResponseDTOImpl(
      {this.statusCode, this.message, this.data, this.success});

  factory _$LoginResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseDTOImplFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  @override
  final DataDTO? data;
  @override
  final bool? success;

  @override
  String toString() {
    return 'LoginResponseDTO(statusCode: $statusCode, message: $message, data: $data, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseDTOImpl &&
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

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseDTOImplCopyWith<_$LoginResponseDTOImpl> get copyWith =>
      __$$LoginResponseDTOImplCopyWithImpl<_$LoginResponseDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _LoginResponseDTO implements LoginResponseDTO {
  factory _LoginResponseDTO(
      {final int? statusCode,
      final String? message,
      final DataDTO? data,
      final bool? success}) = _$LoginResponseDTOImpl;

  factory _LoginResponseDTO.fromJson(Map<String, dynamic> json) =
      _$LoginResponseDTOImpl.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  DataDTO? get data;
  @override
  bool? get success;

  /// Create a copy of LoginResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseDTOImplCopyWith<_$LoginResponseDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataDTO _$DataDTOFromJson(Map<String, dynamic> json) {
  return _DataDTO.fromJson(json);
}

/// @nodoc
mixin _$DataDTO {
  String? get userId => throw _privateConstructorUsedError;
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;

  /// Serializes this DataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataDTOCopyWith<DataDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDTOCopyWith<$Res> {
  factory $DataDTOCopyWith(DataDTO value, $Res Function(DataDTO) then) =
      _$DataDTOCopyWithImpl<$Res, DataDTO>;
  @useResult
  $Res call(
      {String? userId,
      String? accessToken,
      String? refreshToken,
      String? userType});
}

/// @nodoc
class _$DataDTOCopyWithImpl<$Res, $Val extends DataDTO>
    implements $DataDTOCopyWith<$Res> {
  _$DataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDTOImplCopyWith<$Res> implements $DataDTOCopyWith<$Res> {
  factory _$$DataDTOImplCopyWith(
          _$DataDTOImpl value, $Res Function(_$DataDTOImpl) then) =
      __$$DataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? accessToken,
      String? refreshToken,
      String? userType});
}

/// @nodoc
class __$$DataDTOImplCopyWithImpl<$Res>
    extends _$DataDTOCopyWithImpl<$Res, _$DataDTOImpl>
    implements _$$DataDTOImplCopyWith<$Res> {
  __$$DataDTOImplCopyWithImpl(
      _$DataDTOImpl _value, $Res Function(_$DataDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? userType = freezed,
  }) {
    return _then(_$DataDTOImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataDTOImpl implements _DataDTO {
  _$DataDTOImpl(
      {this.userId, this.accessToken, this.refreshToken, this.userType});

  factory _$DataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataDTOImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;
  @override
  final String? userType;

  @override
  String toString() {
    return 'DataDTO(userId: $userId, accessToken: $accessToken, refreshToken: $refreshToken, userType: $userType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDTOImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userType, userType) ||
                other.userType == userType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, accessToken, refreshToken, userType);

  /// Create a copy of DataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDTOImplCopyWith<_$DataDTOImpl> get copyWith =>
      __$$DataDTOImplCopyWithImpl<_$DataDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataDTOImplToJson(
      this,
    );
  }
}

abstract class _DataDTO implements DataDTO {
  factory _DataDTO(
      {final String? userId,
      final String? accessToken,
      final String? refreshToken,
      final String? userType}) = _$DataDTOImpl;

  factory _DataDTO.fromJson(Map<String, dynamic> json) = _$DataDTOImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get accessToken;
  @override
  String? get refreshToken;
  @override
  String? get userType;

  /// Create a copy of DataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataDTOImplCopyWith<_$DataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
