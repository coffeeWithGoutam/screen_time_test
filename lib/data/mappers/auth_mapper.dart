import 'package:screen_time_test/data/models/response/login/login_response.dart';

import '../../domain/entities/auth_entities.dart';

extension AuthMapper on LoginResponseDTO {
  AuthEntities toEntity() {
    return AuthEntities(
      userId: data!.userId ?? "",
      accessToken: data!.accessToken ?? "",
      refreshToken: data!.refreshToken ?? "",
      message: message ?? "",
      userRole: data!.userType ?? "",
    );
  }
}
