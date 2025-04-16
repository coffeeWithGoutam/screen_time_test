import 'package:json_annotation/json_annotation.dart';

part 'login_request.g.dart';

@JsonSerializable(createFactory: false, includeIfNull: false)
class LoginRequestDTO {
  final String email;
  final String password;
  final String? deviceName;
  final String? token;

  const LoginRequestDTO({
    required this.email,
    required this.password,
    this.deviceName,
    this.token,
  });

  Map<String, dynamic> toJson() => _$LoginRequestDTOToJson(this);
}
