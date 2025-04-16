import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.g.dart';
part 'login_response.freezed.dart';

@freezed
class LoginResponseDTO with _$LoginResponseDTO {
  factory LoginResponseDTO({
    int? statusCode,
    String? message,
    DataDTO? data,
    bool? success,
  }) = _LoginResponseDTO;

  factory LoginResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseDTOFromJson(json);
}

@freezed
class DataDTO with _$DataDTO {
  factory DataDTO({
    String? userId,
    String? accessToken,
    String? refreshToken,
    String? userType,
  }) = _DataDTO;

  factory DataDTO.fromJson(Map<String, dynamic> json) =>
      _$DataDTOFromJson(json);
}
