import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_response.freezed.dart';
part 'message_response.g.dart';

@freezed
class MessageResponseDTO with _$MessageResponseDTO {
  factory MessageResponseDTO({
    int? statusCode,
    String? message,
    dynamic data,
    bool? success,
  }) = _MessageResponseDTO;

  factory MessageResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseDTOFromJson(json);
}