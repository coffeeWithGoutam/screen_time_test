import '../../domain/entities/profile_entities.dart';
import '../models/response/child_profile/child_profile_response.dart';

extension ProfileMapper on ProfileDataDTO {
  ProfileEntities toEntity() {
    return ProfileEntities(
      id: id ?? "",
      avatar: avatar ?? "",
      fullName: fullName ?? "",
      isOnline: isOnline ?? false,
    );
  }
}
