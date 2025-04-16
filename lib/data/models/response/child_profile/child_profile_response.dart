import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_profile_response.g.dart';
part 'child_profile_response.freezed.dart';

@freezed
class ChildProfileResponseDTO with _$ChildProfileResponseDTO {
  factory ChildProfileResponseDTO({
    int? statusCode,
    String? message,
    ProfileDataDTO? data,
    bool? success,
  }) = _ChildProfileResponseDTO;

  factory ChildProfileResponseDTO.fromJson(Map<String,dynamic> json) =>
      _$ChildProfileResponseDTOFromJson(json);
}

@freezed
class ProfileDataDTO with _$ProfileDataDTO {
  factory ProfileDataDTO({
    @JsonKey(name: "_id") String? id,
    String? avatar,
    String? fullName,
    bool? isOnline,
  }) = _ProfileDataDTO;

  factory ProfileDataDTO.fromJson(Map<String,dynamic> json) =>
      _$ProfileDataDTOFromJson(json);
}
